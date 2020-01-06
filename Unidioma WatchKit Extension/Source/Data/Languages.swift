enum Languages: String, CaseIterable {
    case Japanese
    case Chinese
    case unknown

    init(rawValue: String) {
        switch rawValue {
            case Self.Japanese.rawValue:
                self = .Japanese
            case Self.Chinese.rawValue:
                self = .Chinese
            default:
                self = .unknown
        }
    }
}

enum CharacterTypes: String {
    // Japanese
    case kanji
    case hiragana
    case katakana
    // Chinese
    case pinyin
}
