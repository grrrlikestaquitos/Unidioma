import SwiftUI

struct ChineseViews: View {
    
    enum Constant {
        static let Chinese = "Chinese"
    }
    
    let type = Constant.Chinese
    let series = Series.B
    let model: some BaseModel = CharacterModel.example

    var body: some View {
        return AnyView(renderChineseView(series: series))
    }

    func renderChineseView(series: Series) -> some View {
        guard let model = model as? CharacterModel else { return AnyView(Text(""))}
        switch series {
        case .A:
            return AnyView(CharacterViewSA(model: model))
        case .B:
            return AnyView(CharacterViewSB(model: model))
        }
    }
}
