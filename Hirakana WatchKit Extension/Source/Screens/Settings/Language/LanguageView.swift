import SwiftUI

struct LanguageView: View {
    @ObservedObject var dataStore = AppState.shared.settings

    var body: some View {
        VStack {
            Selector(onPress: {
                self.dataStore.languageWasSelected(language: .Japanese)
            }, text: SupportedLanguages.Japanese.rawValue,
               condition: self.dataStore.language.value == SupportedLanguages.Japanese.rawValue)
            Selector(onPress: {
                self.dataStore.languageWasSelected(language: .Chinese)
            }, text: SupportedLanguages.Chinese.rawValue,
               condition: self.dataStore.language.value == SupportedLanguages.Chinese.rawValue)
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
