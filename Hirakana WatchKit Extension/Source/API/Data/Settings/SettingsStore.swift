import SwiftUI
import Combine

final class SettingsStore: ObservableObject {
    @Published var language = HKUserDefaults(key: .languageSelected,
                                             defaultValue: defaultLanguage)

    @Published var languageConfig = HKUserDefaults(key: .languageConfig,
                                                defaultValue: defaultLanguageConfig)
}

extension SettingsStore: SettingsStoreActions {
    func languageWasSelected(language: SupportedLanguages) {
        self.language.value = language.rawValue
    }

    func update(language: SupportedLanguages, category: String, model: LanguageModel.Category) {
        guard var config = self.languageConfig.value[language.rawValue] else { return }
        config.category[category] = model
    }
}

private extension SettingsStore {
    static let defaultLanguageConfig: [SupportedLanguages.RawValue: LanguageModel] = [
        SupportedLanguages.Japanese.rawValue: LanguageModel(category: [
            "kanji": LanguageModel.Category(currentIndex: 0),
            "hiragana": LanguageModel.Category(currentIndex: 0),
            "katakana": LanguageModel.Category(currentIndex: 0)
        ]),
        SupportedLanguages.Chinese.rawValue: LanguageModel(category: [
            "pinyin": LanguageModel.Category(currentIndex: 0)
        ])
    ]

    static let defaultLanguage: SupportedLanguages.RawValue = SupportedLanguages.Japanese.rawValue
}
