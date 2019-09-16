import SwiftUI

struct JapaneseViews: View {
    let type = "japanese"
    let series = Series.A

    var body: some View {
        switch type {
            case "japanese":
                return AnyView(renderKanjiView(series: series))
            default:
                return AnyView(KanjiViewSA(model: kanjimodel))
        }
    }

    func renderKanjiView(series: Series) -> some View {
        switch series {
            case .A:
                return AnyView(KanjiViewSA(model: kanjimodel))
            case .B:
                return AnyView(KanjiViewSB(model: kanjimodel))
        }
    }

    let kanjimodel = KanjiModel(character: "私",
                                furigana: "わたし",
                                romaji: "wa-ta-shi",
                                meaning: "I; Me",
                                englishPhrase: "I fell",
                                japanesePhrase: "私は落ちた",
                                romajiPhrase: "Watashi wa ochita")
}
