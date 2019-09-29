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

    init(types: [Type],
         selectedType: Int,
         kanji: Category,
         hiragana: Category,
         katakana: Category) {
        self.kanji = kanji
        self.hiragana = hiragana
        self.katakana = katakana
        super.init()
        self.types = types
        self.selectedType = types[selectedType]
    }

    required init(from decoder: Decoder) throws {
        fatalError("init(from:) has not been implemented")
    }
}

class ChineseModel: LanguageModel {
    let pinyin: Category

    init(types: [Type],
         selectedType: Int,
         pinyin: Category) {
        self.pinyin = pinyin
        super.init()
        self.types = types
        self.selectedType = types[selectedType]
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
