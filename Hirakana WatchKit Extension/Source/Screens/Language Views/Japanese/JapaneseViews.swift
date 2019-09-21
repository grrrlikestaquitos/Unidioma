import SwiftUI

enum JapaneseViewType {
    case kanji
    case hiragana
//    case katakana
}

struct JapaneseViews: View {
    let type: JapaneseViewType = .hiragana
    let series = Series.B
    let model: some BaseModel = HiraganaModel.example

    var body: some View {
        switch type {
        case .kanji:
            return AnyView(renderKanjiView(series: series))
        case .hiragana:
            return AnyView(renderHiraganaView())
        }
    }

    func renderKanjiView(series: Series) -> some View {
        guard let model = model as? KanjiModel else { return AnyView(Text("")) }
        switch series {
            case .A:
                return AnyView(KanjiViewSA(model: model))
            case .B:
                return AnyView(KanjiViewSB(model: model))
        }
    }

    func renderHiraganaView() -> some View {
        guard let model = model as? HiraganaModel else { return AnyView(Text(""))}
        return AnyView(HiraganaView(model: model))
    }
}
