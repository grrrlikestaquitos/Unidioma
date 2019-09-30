import SwiftUI

struct ChineseViews: View {
    let series = Series.B
    var model: BaseModel?

    var body: some View {
        return renderChineseView(series: series)
    }

    func renderChineseView(series: Series) -> some View {
        guard let model = model as? CharacterModel else {
            return EmptyView
        }
        switch series {
            case .A:
                return AnyView(CharacterViewSA(model: model))
            case .B:
                return AnyView(CharacterViewSB(model: model))
        }
    }
}
