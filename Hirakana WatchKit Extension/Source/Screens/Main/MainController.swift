import WatchKit
import SwiftUI

final class MainController: WKHostingController<HirakanaView> {
    let settingsStore = AppState.shared.settings
    let mainStore = AppState.shared.main
    let viewState = MainViewState(appState: AppState.shared)

    var language: Languages {
        return Languages(rawValue: settingsStore.language.value)
    }

    var model: BaseModel? {
        return mainStore.model
    }

    override func didAppear() {
        viewState.checkLanguageConfig()
    }

    override func willActivate() {
        super.willActivate()
        setTitle(settingsStore.language.value)
        print("Main activated")
    }
    
    override var body: HirakanaView {
        return HirakanaView(model: model, language: language)
    }
}
