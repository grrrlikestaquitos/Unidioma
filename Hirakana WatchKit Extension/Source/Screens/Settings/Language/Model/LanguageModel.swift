import SwiftUI

protocol LanguageModelProtocol: Codable {
    var selectedType: Type? { get }
    var types: [Type] { get }
}

struct LanguageModel: LanguageModelProtocol {
    var selectedType: Type?
    var types: [Type]

    init(selectedType: Int, types: [Type]) {
        self.selectedType = types[selectedType]
        self.types = types
    }
}

enum Languages: String, CaseIterable {
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
