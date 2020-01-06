import Foundation

struct LanguageModel: BaseModel {
    let character: AnyCodable
    let type: String
}

extension LanguageModel {
    init(dictionary: Any) throws {
        let data = try JSONSerialization.data(withJSONObject: dictionary)
        self = try JSONDecoder().decode(LanguageModel.self, from: data)
    }

    private enum CodingKeys: String, CodingKey {
        case character, type
    }
}
