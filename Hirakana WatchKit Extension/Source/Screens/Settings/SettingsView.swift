import SwiftUI

private enum SettingsPage: String {
    case language = "Language"
    case type = "Type"
}

struct SettingsView: View {
    @ObservedObject var settingStore = AppState.shared.settings

    var language: Languages.RawValue {
        return settingStore.language.value
    }

    var types: [Type] {
        let config = settingStore.languageConfig.value[language]
        return config?.types ?? []
    }

    var body: some View {
        ScrollView {
            Section(SettingsPage.language.rawValue) {
                LanguageView(language: language, actions: settingStore.self)
            }
            if (types.count > 0) {
                Section(SettingsPage.type.rawValue) {
                    LanguageType(types: types)
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
