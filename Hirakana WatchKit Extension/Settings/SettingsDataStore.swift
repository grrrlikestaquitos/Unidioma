import SwiftUI
import Combine

final class SettingsDataStore: BindableObject {
    let didChange = PassthroughSubject<Void, Never>()

    static let defaultLanguage: [LanguageModel] = [
        .init(0, "Japanese", true),
        .init(1, "Chinese", false)
    ]
    static let defaultCharsPerDay: [String: Int] = ["charPerDay": 1]

    @SettingsUserDefaults(key: .languages, defaultValue: defaultLanguage)
    var languageModel: [LanguageModel] {
        didSet {
            didChange.send()
        }
    }

    @SettingsUserDefaults(key: .frequency, defaultValue: defaultCharsPerDay)
    var charPerDay: [String: Int] {
        didSet {
            didChange.send()
        }
    }
}
