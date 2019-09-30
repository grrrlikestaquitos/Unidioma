import SwiftUI

let EmptyView = AnyView(Text(""))

struct JapaneseViews: View {
    let series = Series.B
    var model: BaseModel?

    var body: some View {
        switch model {
            case is KanjiModel:
                return AnyView(renderKanjiView(series: series))
            case is HiraganaModel:
                return AnyView(renderHiraganaView())
            case is KatakanaModel:
                return AnyView(renderKatakanaView())
            default:
                return EmptyView
        }
    }

    func renderKanjiView(series: Series) -> some View {
        guard let model = model as? KanjiModel else {
            return EmptyView
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
            return EmptyView
        }
        return AnyView(HiraganaView(model: model))
    }

    func renderKatakanaView() -> some View {
        guard let model = model as? KatakanaModel else {
            return EmptyView
        }
        return AnyView(KatakanaView(model: model))
    }
}
