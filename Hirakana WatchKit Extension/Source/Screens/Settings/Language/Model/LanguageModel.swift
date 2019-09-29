import SwiftUI

class LanguageModel: Codable {
    var types: [Type] = []
    var selectedType: Type?
}

struct Category: Codable {
    let currentIndex: Int
    let limit: Int?
    let timestamp: Date
}

class JapaneseModel: LanguageModel {
    let kanji: Category
    let hiragana: Category
    let katakana: Category

    init(kanji: Category, hiragana: Category, katakana: Category) {
        self.kanji = kanji
        self.hiragana = hiragana
        self.katakana = katakana
        super.init()

        super.types = [
            Type(id: 0, name: "Kanji"),
            Type(id: 1, name: "Hiragana"),
            Type(id: 2, name: "Katakana")
        ]
    }

    required init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
}

class ChineseModel: LanguageModel {
    let pinyin: Category

    init(pinyin: Category) {
        self.pinyin = pinyin
        super.init()

        super.types = [Type(id: 0, name: "Pinyin")]
    }

    required init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
}

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
