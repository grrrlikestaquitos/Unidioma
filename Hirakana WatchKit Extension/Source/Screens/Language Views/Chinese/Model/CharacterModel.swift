struct CharacterModel: Codable {
    let id: Int?
    let pinyin: String
    let chineseCharacter: String
    let meaning: String
    let englishPhrase: String
    let chinesePhrasePinyin: String
    let chinesePhraseCharacters: String
}

extension CharacterModel: BaseModel {
    static let example = CharacterModel(id: 0,
                                        pinyin: "wǒ",
                                        chineseCharacter: "我",
                                        meaning: "I; me; my",
                                        englishPhrase: "I run",
                                        chinesePhrasePinyin: "wǒ paǒ",
                                        chinesePhraseCharacters: "我 跑")
}
