import SwiftUI

private enum SettingsPage: String {
    case languages = "Languages"
    case frequency = "Char Frequency"
}

struct SettingsView : View {
    @ObjectBinding var dataStore: SettingsDataStore

    var body: some View {
        VStack {
            SettingsNavigator(.languages) {
                LanguageView(dataStore: dataStore)
            }
            SettingsNavigator(.frequency) {
                CharacterFrequencyView(dataStore: dataStore)
            }
            Spacer()
        }
    }
}

extension SettingsView {
    struct SettingsNavigator<P: View>: View {
        private let page: P
        private let text: SettingsPage

        fileprivate init(_ text: SettingsPage, _ page: () -> (P)) {
            self.page = page()
            self.text = text
        }
        var body: some View {
            NavigationButton(destination: page) {
                HStack {
                    HKText(textType: .title, text: text.rawValue)
                        .padding([.leading], 5)
                    Spacer()
                }
            }
        }
    }
}

//#if DEBUG
//struct SettingsView_Previews : PreviewProvider {
//    static var previews: some View {
//        SettingsView()
//    }
//}
//#endif
