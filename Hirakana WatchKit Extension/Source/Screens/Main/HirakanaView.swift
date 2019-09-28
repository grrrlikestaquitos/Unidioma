import SwiftUI

enum Series {
    case A, B
}

struct HirakanaView: View {
    @ObservedObject private var settingsStore = AppState.shared.settings
    var model: BaseModel
    var language: SupportedLanguages

    var body: some View {
        switch language {
            case .Japanese:
                return AnyView(JapaneseViews(model: model))
            case .Chinese:
                return AnyView(ChineseViews(model: model))
            case .unknown:
                return AnyView(Text("Something Wrong Happened"))
        }
    }
}
