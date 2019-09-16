import SwiftUI

struct LanguageModel: Codable, Identifiable {
    var id: Int
    var language: Language.RawValue

    init(_ id: Int, _ language: Language) {
        self.id = id
        self.language = language.rawValue
    }
}

enum Language: String {
    case Japanese
    case Chinese
}
