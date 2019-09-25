import SwiftUI

struct LanguageModel: Codable {
    var category: [String: Category]

    init(category: [String: Category]) {
        self.category = category
    }
}

extension LanguageModel {
    struct Category: Codable {
        var currentIndex: Int
    }
}

enum SupportedLanguages: String, CaseIterable {
    case Japanese
    case Chinese
}
