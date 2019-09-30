import WatchKit
import SwiftUI

final class MainController: WKHostingController<HirakanaView> {
    let settingsStore = AppState.shared.settings
    let viewState = MainViewState()

    var language: Languages {
        return Languages(rawValue: settingsStore.language.value)
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
        return HirakanaView(language: language)
    }
}
