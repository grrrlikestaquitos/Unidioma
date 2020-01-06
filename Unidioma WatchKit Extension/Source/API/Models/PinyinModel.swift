import Foundation

struct PinyinModel: BaseModel {
    let id: Int?
    let pinyin: String
    let chineseCharacter: String
    let meaning: String
    let englishPhrase: String
    let chinesePhrasePinyin: String
    let chinesePhraseCharacters: String
}

// Example
extension PinyinModel {
    static let example = PinyinModel(id: 0,
                                        pinyin: "wǒ",
                                        chineseCharacter: "我",
                                        meaning: "I; me; my",
                                        englishPhrase: "I run",
                                        chinesePhrasePinyin: "wǒ paǒ",
                                        chinesePhraseCharacters: "我 跑")
}

// Model Encoding/Decoding
extension PinyinModel {
    init(dictionary: Any) throws {
        let data = try JSONSerialization.data(withJSONObject: dictionary)
        self = try JSONDecoder().decode(PinyinModel.self, from: data)
    }

    private enum CodingKeys: String, CodingKey {
        case id, pinyin, chineseCharacter, meaning, englishPhrase, chinesePhrasePinyin, chinesePhraseCharacters
    }
}
