import Foundation

final class MainViewState {
    let settingsStore = AppState.shared.settings
    let mainStore = AppState.shared.main

    func startState() {
        fetchCharacterForLanguage()
    }

    private func fetchCharacterForLanguage() {
        fetchRequest(model: LanguageModel.self) { (data) in
            let parsedModel = self.parseLanguageCharacterModel(type: data.type,
                                                               character: data.character.value)
            DispatchQueue.main.async {
                self.mainStore.model = parsedModel
            }
        }
    }

    func parseLanguageCharacterModel(type: String, character: Any) -> BaseModel? {
        let characterType = CharacterTypes(rawValue: type)

        switch characterType {
            case .kanji:
                return try? KanjiModel(dictionary: character)
            case .hiragana:
                return character as? HiraganaModel
            case .katakana:
                return character as? KatakanaModel
            default: return nil
        }
    }

    // Network Requests
    func fetchRequest<M: BaseModel>(model: M.Type, completed: @escaping (M) -> ()) {
        let endpoint = LanguageRoute<M>(languagePath: settingsStore.language.value)

        HTTP(endpoint: endpoint).request(success: { (data) in
            completed(data)
        })
    }
}
