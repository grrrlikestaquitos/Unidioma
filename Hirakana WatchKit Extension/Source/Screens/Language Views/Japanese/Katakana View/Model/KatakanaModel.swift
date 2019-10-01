struct KatakanaModel: Codable, BaseModel {
    let id: Int
    let character: String
    let romaji: String
    let type: String
}

extension KatakanaModel {
    static let example = KatakanaModel(id: 0,
                                       character: "あ",
                                       romaji: "a",
                                       type: "v")
}
