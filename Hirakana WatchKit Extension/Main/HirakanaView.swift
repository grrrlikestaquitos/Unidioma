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
    let kanjimodel = KanjiModel(hiragana: "わたし",
                                kanji: "私",
                                romaji: "wa-ta-shi",
                                meanings: ["I; Me"],
                                phrases: ["I fell", "私は落ちた", "Watashi wa ochita"])
    let characterModel = CharacterModel(pinyin: "wǒ", character: "我", phraseCharacters: ["我","跑"], meaning: ["I; me; my"], pinyinForPhrase: ["wǒ","paǒ"], meaningForPhrase: "I run")
    
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
