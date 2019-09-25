import SwiftUI
import Combine

final class SettingsStore: ObservableObject {
    @Published var language = HKUserDefaults(key: .languageSelected,
                                             defaultValue: defaultLanguage)
    @Published var languageConfig = HKUserDefaults(key: .languageConfig,
                                                   defaultValue: defaultLanguageConfig)
}

extension SettingsStore: SettingsStoreActions {
    func languageWasSelected(_ language: SupportedLanguages) {
        self.language.value = language.rawValue
    }
}

private extension SettingsStore {
    static let defaultLanguageConfig: [SupportedLanguages.RawValue: LanguageModel] = [
        SupportedLanguages.Japanese.rawValue: LanguageModel(id: 0, category: [
            "kanji": LanguageModel.LanguageCategory(currentIndex: 0),
            "hiragana": LanguageModel.LanguageCategory(currentIndex: 0),
            "katakana": LanguageModel.LanguageCategory(currentIndex: 0)
        ]),
        SupportedLanguages.Chinese.rawValue: LanguageModel(id: 0, category: [
            "pinyin": LanguageModel.LanguageCategory(currentIndex: 0)
        ])
    ]

    static let defaultLanguage: SupportedLanguages.RawValue = SupportedLanguages.Japanese.rawValue
}
