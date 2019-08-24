import SwiftUI
import Combine

final class SettingsStore: ObservableObject {
    @HKUserDefaults(key: .languages, defaultValue: defaultLanguage)
    private var languages: [LanguageModel]

    @HKUserDefaults(key: .frequency, defaultValue: defaultCharFrequency)
    private var charFrequency: CharFrequencyModel

    

//    @Published private(set) var languageModel = SettingsStore.defaultLanguage
//    @Published private(set) var charFrequencyModel = SettingsStore.defaultCharFrequency
}

extension SettingsStore: SettingsStoreActions {
    func languageWasSelected(_ language: LanguageModel) {
        var updatedLanguage = language
        updatedLanguage.isEnabled = !updatedLanguage.isEnabled

        languages[language.id] = updatedLanguage
    }

    func charFrequencyWasSelected(_ number: Int) {
        charFrequency.daily = number
    }
}

private extension SettingsStore {
    static let defaultLanguage: [LanguageModel] = [
            .init(0, "Japanese", true),
            .init(1, "Chinese", false)
    ]
    
    static let defaultCharFrequency: CharFrequencyModel = .init(1)
}
