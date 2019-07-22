import SwiftUI
import Combine

final class SettingsStore : BindableObject {
    let didChange = PassthroughSubject<Void, Never>()

    @HKUserDefaults(key: .languages, defaultValue: defaultLanguage)
    private(set) var languageModel: [LanguageModel] {
        didSet {
            didChange.send()
        }
    }

    @HKUserDefaults(key: .frequency, defaultValue: defaultCharFrequency)
    private(set) var charFrequencyModel: CharFrequencyModel {
        didSet {
            didChange.send()
        }
    }
}

extension SettingsStore: SettingsStoreActions {
    func languageWasSelected(_ language: LanguageModel) {
        var updatedLanguage = language
        updatedLanguage.isEnabled = !updatedLanguage.isEnabled

        languageModel[language.id] = updatedLanguage
    }

    func charFrequencyWasSelected(_ number: Int) {
        charFrequencyModel.charsPerDay = number
    }
}

private extension SettingsStore {
    static let defaultLanguage: [LanguageModel] = [
            .init(0, "Japanese", true),
            .init(1, "Chinese", false)
    ]
    
    static let defaultCharFrequency: CharFrequencyModel = .init(1)
}
