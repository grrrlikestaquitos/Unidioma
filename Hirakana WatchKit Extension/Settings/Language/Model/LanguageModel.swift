import SwiftUI

struct LanguageModel: Codable, Identifiable {
    var id: Int
    var language: String
    var isEnabled: Bool

    init(_ id: Int, _ language: String, _ isEnabled: Bool) {
        self.id = id
        self.language = language
        self.isEnabled = isEnabled
    }
}
