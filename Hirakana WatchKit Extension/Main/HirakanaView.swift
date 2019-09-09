import SwiftUI

enum Series {
    case A, B
}

enum ViewType {
    case kanji(_ series: Series), hiragana, katakana
    case character(_ series: Series)
}

struct HirakanaView : View {
    var viewType: ViewType? = .kanji(Series.A)
    let kanjimodel = KanjiModel(character: "私",
                                furigana: "わたし",
                                romaji: "wa-ta-shi",
                                meaning: "I; Me",
                                englishPhrase: "I fell",
                                japanesePhrase: "私は落ちた",
                                romajiPhrase: "Watashi wa ochita")
    let characterModel = CharacterModel(id: nil,
                                        pinyin: "wǒ",
                                        chineseCharacter: "我",
                                        meaning: "I; me; my",
                                        englishPhrase: "I run",
                                        chinesePhrasePinyin: "wǒ paǒ",
                                        chinesePhraseCharacters: "我 跑")
    
    var body: some View {
        switch viewType {
        case .kanji(let series)?:
            if series == Series.A {
                return AnyView(KanjiViewSA(model: kanjimodel))
            } else {
                return AnyView(KanjiViewSB(model: kanjimodel))
            }
        case .character(let series)?:
            if series == Series.A {
                return AnyView(CharacterViewSA(model: characterModel))
            } else {
                return AnyView(CharacterViewSB(model: characterModel))
            }
        default:
            return AnyView(KanjiViewSA(model: kanjimodel))
        }
    }
    
}
