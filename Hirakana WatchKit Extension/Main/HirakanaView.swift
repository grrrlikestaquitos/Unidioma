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

    var body: some View {
        KanjiViewSB(model: kanjimodel)
    }
}
