import SwiftUI

private enum SettingsPage: String {
    case language = "Language"
}

struct SettingsView: View {
    var body: some View {
        ScrollView {
            Section(SettingsPage.language.rawValue) {
                LanguageView()
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
