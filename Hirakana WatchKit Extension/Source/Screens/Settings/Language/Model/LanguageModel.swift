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
