import Foundation

struct KanjiModel: BaseModel {
    let id: Int
    let character: String
    let furigana: String
    let romaji: String
    let meaning: String
    let englishPhrase: String
    let japanesePhrase: String
    let romajiPhrase: String
}

// Example
extension KanjiModel {
    static let example = KanjiModel(id: 0,
                                    character: "私",
                                    furigana: "わたし",
                                    romaji: "wa-ta-shi",
                                    meaning: "I; Me",
                                    englishPhrase: "I fell",
                                    japanesePhrase: "私は落ちた",
                                    romajiPhrase: "Watashi wa ochita")
}

// Model Encoding/Decoding
extension KanjiModel {
    init(dictionary: Any) throws {
        let data = try JSONSerialization.data(withJSONObject: dictionary)
        self = try JSONDecoder().decode(KanjiModel.self, from: data)
    }

    private enum CodingKeys: String, CodingKey {
        case id, character, furigana, romaji, meaning, englishPhrase, japanesePhrase, romajiPhrase
    }
}
