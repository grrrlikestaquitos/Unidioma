import SwiftUI

struct LanguageView: View {
    var language: Languages.RawValue
    var actions: SettingsStoreActions

    var isJapaneseSelected: Bool {
        return (language == Languages.Japanese.rawValue)
    }

    var isChineseSelected: Bool {
        return (language == Languages.Chinese.rawValue)
    }

    var body: some View {
        VStack {
            Selector(text: Languages.Japanese.rawValue,
                     condition: isJapaneseSelected) {
                        self.actions.languageWasSelected(language: .Japanese)
            }
            Selector(text: Languages.Chinese.rawValue,
                     condition: isChineseSelected) {
                        self.actions.languageWasSelected(language: .Chinese)
            }
        }
    }
}

//#if DEBUG
//struct LanguagesView_Previews : PreviewProvider {
//    static var previews: some View {
//        LanguageView()
//    }
//}
//#endif
