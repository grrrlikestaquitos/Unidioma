import SwiftUI
import Combine

final class SettingsStore: ObservableObject {
    @Published var languageSelected = HKUserDefaults(key: .languages, defaultValue: defaultLanguage)
    @Published var charFrequency = HKUserDefaults(key: .frequency, defaultValue: defaultCharFrequency)
}

extension SettingsStore: SettingsStoreActions {
    func languageWasSelected(_ language: LanguageModel) {
        let updatedLanguage = language

        languageSelected.value = updatedLanguage
    }

    func charFrequencyWasSelected(_ number: Int) {
        charFrequency.value.daily = number
    }
}

private extension SettingsStore {
    static let defaultLanguage: LanguageModel = .init(0, .Japanese)
    static let defaultCharFrequency: CharFrequencyModel = .init(1)
}
