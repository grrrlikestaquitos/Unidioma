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
