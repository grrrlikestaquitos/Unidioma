import SwiftUI

enum Series {
    case A, B
}

struct HirakanaView: View {
    @ObservedObject var settingsStore = MainStore.shared.settings

    var languageSelected: Language {
        let language = Language(rawValue: settingsStore.languageSelected.value.language)
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
