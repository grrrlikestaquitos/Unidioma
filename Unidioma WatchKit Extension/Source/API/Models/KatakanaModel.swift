import Foundation

struct KatakanaModel: BaseModel {
    let id: Int
    let character: String
    let romaji: String
    let type: String
}

// Example
extension KatakanaModel {
    static let example = KatakanaModel(id: 0,
                                       character: "あ",
                                       romaji: "a",
                                       type: "v")
}

// Model Encoding/Decoding
extension KatakanaModel {
    init(dictionary: Any) throws {
        let data = try JSONSerialization.data(withJSONObject: dictionary)
        self = try JSONDecoder().decode(KatakanaModel.self, from: data)
    }

    private enum CodingKeys: String, CodingKey {
        case id, character, romaji, type
    }
}
