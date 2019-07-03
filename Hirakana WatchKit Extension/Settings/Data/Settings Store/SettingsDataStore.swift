import SwiftUI
import Combine

final class SettingsDataStore: BindableObject {
    let didChange = PassthroughSubject<Void, Never>()

    @SettingsUserDefaults(key: .languages, defaultValue: defaultLanguage)
    private(set) var languageModel: [LanguageModel] {
        didSet {
            didChange.send()
        }
    }

    @SettingsUserDefaults(key: .frequency, defaultValue: defaultCharFrequency)
    private(set) var charFrequencyModel: CharFrequencyModel {
        didSet {
            didChange.send()
        }
    }
}

extension SettingsDataStore: SettingsDataStoreActions {
    func languageWasSelected(_ language: LanguageModel) {
        var updatedLanguage = language
        updatedLanguage.isEnabled = !updatedLanguage.isEnabled

        languageModel[language.id] = updatedLanguage
    }

    func charFrequencyWasSelected(_ number: Int) {
        charFrequencyModel.charsPerDay = number
    }
}

extension SettingsDataStore {
    static let defaultLanguage: [LanguageModel] = [
            .init(0, "Japanese", true),
            .init(1, "Chinese", false)
    ]
    
    static let defaultCharFrequency: CharFrequencyModel = .init(1)
}
