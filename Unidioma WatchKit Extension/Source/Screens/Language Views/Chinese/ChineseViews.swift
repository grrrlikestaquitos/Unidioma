import SwiftUI

struct ChineseViews: View {
    let series = Series.B
    var model: BaseModel?

    var body: some View {
        return renderChineseView(series: series)
    }

    func renderChineseView(series: Series) -> some View {
        guard let model = model as? PinyinModel else {
            return EmptyView
        }
        switch series {
            case .A:
                return AnyView(PinyinViewSA(model: model))
            case .B:
                return AnyView(PinyinViewSB(model: model))
            default:
                return EmptyView
        }
    }
}
