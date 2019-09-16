import SwiftUI

struct LanguageView: View {
    @ObservedObject var dataStore = MainStore.shared.settings

    let supportedLanguages: [LanguageModel] = [
        .init(0, .Japanese), .init(1, .Chinese)
    ]

    private func renderLanguageSelector(language: LanguageModel) -> some View {
        Button(action: {
            self.dataStore.languageWasSelected(language)
        }) {
            HStack {
                HKText(textType: .subtitle, text: language.language)
                    .padding([.leading], 5)
                Spacer()

                if (dataStore.languageSelected.value.language == language.language) {
                    Image(systemName: "checkmark.circle")
                        .padding([.trailing], 5)
                }
            }
        }
    }

    var body: some View {
        List(supportedLanguages) { language in
            self.renderLanguageSelector(language: language)
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
