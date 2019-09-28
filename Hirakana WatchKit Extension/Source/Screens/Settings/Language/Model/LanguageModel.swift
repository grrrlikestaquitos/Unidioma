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
    case unknown

    init(rawValue: String) {
        switch rawValue {
            case Self.Japanese.rawValue:
                self = .Japanese
            case Self.Chinese.rawValue:
                self = .Chinese
            default:
                self = .unknown
        }
    }
}
