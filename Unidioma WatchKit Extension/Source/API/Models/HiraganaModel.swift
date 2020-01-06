import Foundation

struct HiraganaModel: BaseModel {
    let id: Int
    let character: String
    let romaji: String
    let type: String
}

// Example
extension HiraganaModel {
    static let example = HiraganaModel(id: 0,
                                       character: "あ",
                                       romaji: "a",
                                       type: "v")
}

// Model Encoding/Decoding
extension HiraganaModel {
    init(dictionary: Any) throws {
        let data = try JSONSerialization.data(withJSONObject: dictionary)
        self = try JSONDecoder().decode(HiraganaModel.self, from: data)
    }

    private enum CodingKeys: String, CodingKey {
        case id, character, romaji, type
    }
}
