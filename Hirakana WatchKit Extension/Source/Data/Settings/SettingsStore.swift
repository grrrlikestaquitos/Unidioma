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

    func update(language: Languages, category: String, model: LanguageModel) {
        // TODO
    }
}

private extension SettingsStore {
    static let defaultLanguageConfig: [Languages.RawValue: LanguageModel] = [
        Languages.Japanese.rawValue: JapaneseModel(
            kanji: Category(currentIndex: 0, limit: nil, timestamp: Date()),
            hiragana: Category(currentIndex: 0, limit: 45, timestamp: Date()),
            katakana: Category(currentIndex: 0, limit: 45, timestamp: Date())
        ),
        Languages.Chinese.rawValue: ChineseModel(
            //Katherine TODO, set limit
            pinyin: Category(currentIndex: 0, limit: nil, timestamp: Date())
        )
    ]

    static let defaultLanguage: Languages.RawValue = Languages.Japanese.rawValue
}
