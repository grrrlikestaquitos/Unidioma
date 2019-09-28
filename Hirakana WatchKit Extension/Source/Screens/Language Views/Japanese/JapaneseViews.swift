import SwiftUI

enum JapaneseViewType {
    case kanji
    case hiragana
//    case katakana
}

struct JapaneseViews: View {
    let series = Series.B
    var model: BaseModel

    var body: some View {
        switch model {
            case is KanjiModel:
                return AnyView(renderKanjiView(series: series))
            case is HiraganaModel:
                return AnyView(renderHiraganaView())
            default:
                return AnyView(Text(""))
        }
    }

    func renderKanjiView(series: Series) -> some View {
        guard let model = model as? KanjiModel else {
            return AnyView(Text(""))
        }
        switch series {
            case .A:
                return AnyView(KanjiViewSA(model: model))
            case .B:
                return AnyView(KanjiViewSB(model: model))
        }
    }

    func renderHiraganaView() -> some View {
        guard let model = model as? HiraganaModel else {
            return AnyView(Text(""))
        }
        return AnyView(HiraganaView(model: model))
    }
}
