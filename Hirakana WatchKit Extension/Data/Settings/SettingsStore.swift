import SwiftUI
import Combine

final class SettingsStore: ObservableObject {
    @Published var languages = HKUserDefaults(key: .languages, defaultValue: defaultLanguage)
    @Published var charFrequency = HKUserDefaults(key: .frequency, defaultValue: defaultCharFrequency)
}

extension SettingsStore: SettingsStoreActions {
    func languageWasSelected(_ language: LanguageModel) {
        var updatedLanguage = language
        updatedLanguage.isEnabled = !updatedLanguage.isEnabled
        languages.value[language.id] = updatedLanguage
    }

    func charFrequencyWasSelected(_ number: Int) {
        charFrequency.value.daily = number
    }
}

private extension SettingsStore {
    static let defaultLanguage: [LanguageModel] = [
            .init(0, "Japanese", true),
            .init(1, "Chinese", false)
    ]
    
    static let defaultCharFrequency: CharFrequencyModel = .init(1)
}
