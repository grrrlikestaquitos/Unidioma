import SwiftUI

enum Series {
    case A, B
}

struct HirakanaView: View {
    @ObservedObject var settingsStore = MainStore.shared.settings

    var languageSelected: SupportedLanguages {
        let language = SupportedLanguages(rawValue: settingsStore.language.value)
        return language!
    }

    var body: some View {
        switch languageSelected {
        case .Japanese:
            return AnyView(JapaneseViews())
        case .Chinese:
            return AnyView(ChineseViews())
        }
    }
}
