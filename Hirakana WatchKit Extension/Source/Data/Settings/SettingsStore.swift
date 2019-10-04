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
        var modifiedConfig = self.languageConfig.value
        modifiedConfig[language]?.selectedType = type

        self.languageConfig.value = modifiedConfig
    }

    func update(language: Languages, category: String, model: LanguageModel) {
        // TODO
    }
}

private extension SettingsStore {
    static let defaultLanguageConfig: [Languages.RawValue: LanguageModel] = [
        Languages.Japanese.rawValue: LanguageModel(
            selectedType: 0,
            types: [Type(id: 0,
                         name: LanguageTypes.Hiragana.rawValue,
                         currentIndex: 43,
                         limit: 45,
                         timestamp: Date()),
                    Type(id: 1,
                         name: LanguageTypes.Katakana.rawValue,
                         currentIndex: 0,
                         limit: 45,
                         timestamp: Date()),
                    Type(id: 2,
                         name: LanguageTypes.Kanji.rawValue,
                         currentIndex: 0,
                         limit: nil,
                         timestamp: Date()),
            ]
        ),
        Languages.Chinese.rawValue: LanguageModel(
            selectedType: 0,
            types: [Type(id: 0,
                         name: LanguageTypes.Pinyin.rawValue,
                         currentIndex: 0,
                         limit: nil,
                         timestamp: Date())]
        )
    ]

    static let defaultLanguage: Languages.RawValue = Languages.Japanese.rawValue
}
