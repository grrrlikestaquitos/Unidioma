import SwiftUI

enum Series {
    case A, B, C
}

struct MainView: View {    
    @ObservedObject var mainStore = AppState.shared.main
    var language: Languages

    var body: some View {
        switch language {
            case .Japanese:
                return AnyView(JapaneseViews(model: mainStore.model))
            case .Chinese:
                return AnyView(ChineseViews(model: mainStore.model))
            case .unknown:
                return AnyView(Text("Something Wrong Happened"))
        }
    }
}
