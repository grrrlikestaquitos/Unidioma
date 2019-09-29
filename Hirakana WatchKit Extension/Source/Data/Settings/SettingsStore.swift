import SwiftUI
import Combine

final class SettingsStore: ObservableObject {
    @Published var language = HKUserDefaults(key: .languageSelected,
                                             defaultValue: defaultLanguage)

    @Published var languageConfig = HKUserDefaults(key: .languageConfig,
                                                   defaultValue: defaultLanguageConfig)
}

extension SettingsStore: SettingsStoreActions {
    func languageWasSelected(language: Languages) {
        self.language.value = language.rawValue
    }

    func languageTypeWasSelected(language: Languages.RawValue, type: Type) {
        let modifiedConfig = self.languageConfig.value
        modifiedConfig[language]?.selectedType = type

        self.languageConfig.value = modifiedConfig
    }

    func update(language: Languages, category: String, model: LanguageModel) {
        // TODO
    }
}

private extension SettingsStore {
    static let defaultLanguageConfig: [Languages.RawValue: LanguageModel] = [
        Languages.Japanese.rawValue: JapaneseModel(
            types: [Type(id: 0, name: "Kanji"),
                    Type(id: 1, name: "Hiragana"),
                    Type(id: 2, name: "Katakana")],
            selectedType: 0,
            kanji: Category(currentIndex: 0, limit: nil, timestamp: Date()),
            hiragana: Category(currentIndex: 0, limit: 45, timestamp: Date()),
            katakana: Category(currentIndex: 0, limit: 45, timestamp: Date())
        ),
        Languages.Chinese.rawValue: ChineseModel(
            //Katherine TODO, set limit
            types: [Type(id: 0, name: "Pinyin")],
            selectedType: 0,
            pinyin: Category(currentIndex: 0, limit: nil, timestamp: Date())
        )
    ]

    static let defaultLanguage: Languages.RawValue = Languages.Japanese.rawValue
}
