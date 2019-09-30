import Foundation

final class MainViewState {
    let settingsStore = AppState.shared.settings
    let mainStore = AppState.shared.main

    func checkLanguageConfig() {
        getLanguageTypes(language: settingsStore.language.value)
    }

    private func getLanguageTypes(language: Languages.RawValue) {
        guard let config = settingsStore.languageConfig.value[language],
            let type = LanguageTypes(rawValue: config.selectedType.name) else { return }

        let id = config.selectedType.currentIndex

        switch type {
            case .Hiragana:
                fetchRequest(model: HiraganaModel.self, path: .hiragana, id: id)
            case .Kanji:
                fetchRequest(model: KanjiModel.self, path: .kanji, id: id)
            default:
                return
        }
    }

    func fetchRequest<M: BaseModel>(model: M.Type, path: CharacterRoute<M>.CharacterPath, id: Int) {
        let endpoint = CharacterRoute<M>(route: (path, id))

        HTTP(endpoint: endpoint).request(success: { (data) in
            DispatchQueue.main.async {
                self.mainStore.model = data.first
            }
        }, failure: { error in
            print(error)
        })
    }
}
