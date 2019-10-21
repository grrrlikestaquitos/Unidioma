import WatchKit
import SwiftUI

final class MainController: WKHostingController<MainView> {
    let settingsStore = AppState.shared.settings
    let viewState = MainViewState()

    var language: Languages {
        return Languages(rawValue: settingsStore.language.value)
    }

    override func didAppear() {
        viewState.startState()
    }

    override func willActivate() {
        super.willActivate()
        setTitle(settingsStore.language.value)
    }
    
    override var body: MainView {
        MainView(language: language)
    }
}
