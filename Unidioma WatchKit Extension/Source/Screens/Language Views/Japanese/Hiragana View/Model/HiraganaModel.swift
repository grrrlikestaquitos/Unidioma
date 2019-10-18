struct HiraganaModel: Codable, BaseModel {
    let id: Int
    let character: String
    let romaji: String
    let type: String
}

extension HiraganaModel {
    static let example = HiraganaModel(id: 0,
                                       character: "あ",
                                       romaji: "a",
                                       type: "v")
}
