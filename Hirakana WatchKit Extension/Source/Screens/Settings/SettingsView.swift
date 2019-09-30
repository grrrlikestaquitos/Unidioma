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

    var model: LanguageModel? {
        return settingStore.languageConfig.value[language]
    }

    var body: some View {
        ScrollView {
            Section(SettingsPage.language.rawValue) {
                LanguageView(language: language, actions: settingStore.self)
            }
            RenderLanguageType()
        }
    }

    func RenderLanguageType() -> some View {
        guard let unwrappedModel = model else {
            return EmptyView
        }

        if (unwrappedModel.types.count > 0) {
            return AnyView(
                Section(SettingsPage.type.rawValue) {
                    LanguageType(language: language,
                                 model: unwrappedModel,
                                 actions: settingStore.self)
                }
            )
        }

        return EmptyView
    }
}

//#if DEBUG
//struct SettingsView_Previews : PreviewProvider {
//    static var previews: some View {
//        SettingsView()
//    }
//}
//#endif
