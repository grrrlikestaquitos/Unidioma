struct KanjiModel: Codable {
    var id: Int?
    let character: String
    let furigana: String
    let romaji: String
    let meaning: String
    let englishPhrase: String
    let japanesePhrase: String
    let romajiPhrase: String
}

extension KanjiModel: BaseModel {
    static let example = KanjiModel(character: "私",
                                    furigana: "わたし",
                                    romaji: "wa-ta-shi",
                                    meaning: "I; Me",
                                    englishPhrase: "I fell",
                                    japanesePhrase: "私は落ちた",
                                    romajiPhrase: "Watashi wa ochita")
}
