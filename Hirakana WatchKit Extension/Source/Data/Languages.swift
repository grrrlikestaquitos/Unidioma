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

enum LanguageTypes: String {
    // Japanese
    case Kanji
    case Hiragana
    case Katakana
    // Chinese
    case Pinyin
}
