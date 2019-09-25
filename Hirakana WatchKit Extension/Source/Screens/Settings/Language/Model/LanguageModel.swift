import SwiftUI

struct LanguageModel: Codable, Identifiable {
    let id: Int
    let category: [String: LanguageCategory]

    init(id: Int, category: [String: LanguageCategory]) {
        self.id = id
        self.category = category
    }
}

extension LanguageModel {
    struct LanguageCategory: Codable {
        let currentIndex: Int
    }
}

enum SupportedLanguages: String, CaseIterable {
    case Japanese
    case Chinese
}
