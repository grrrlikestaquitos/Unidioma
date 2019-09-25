import SwiftUI

struct LanguageView: View {
    @ObservedObject var dataStore = MainStore.shared.settings

    var body: some View {
        VStack {
            Selector(onPress: {
                self.dataStore.languageWasSelected(.Japanese)
            }, text: SupportedLanguages.Japanese.rawValue,
               condition: self.dataStore.language.value == SupportedLanguages.Japanese.rawValue)
            Selector(onPress: {
                self.dataStore.languageWasSelected(.Chinese)
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
