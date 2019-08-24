import SwiftUI

struct LanguageView: View {
    @ObservedObject var dataStore = SettingsStore()

    private func renderLanguageSelector(item: LanguageModel) -> some View {
        Button(action: {
            self.dataStore.languageWasSelected(item)
        }) {
            HStack {
                HKText(textType: .subtitle, text: item.language)
                    .padding([.leading], 5)
                Spacer()

                if item.isEnabled == true {
                    Image(systemName: "checkmark.circle")
                        .padding([.trailing], 5)
                }
            }
        }
    }

    var body: some View {
        List(dataStore.languages) { item in
            self.renderLanguageSelector(item: item)
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
