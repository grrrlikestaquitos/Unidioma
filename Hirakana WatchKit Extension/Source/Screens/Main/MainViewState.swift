import Foundation

final class MainViewState {
    let settingsStore: SettingsStore
    let mainStore: MainStore

    init(appState: AppState) {
        self.settingsStore = appState.settings
        self.mainStore = appState.main
    }

    func checkLanguageConfig() {
        let language = Languages(rawValue: settingsStore.language.value)
        var config = settingsStore.languageConfig.value[language.rawValue]

        switch language {
            case .Japanese:
                config = config as? JapaneseModel
            case .Chinese:
                 config = config as? ChineseModel
            case .unknown: return
        }
    }
}