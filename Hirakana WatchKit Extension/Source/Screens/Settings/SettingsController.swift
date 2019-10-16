import WatchKit
import SwiftUI

final class SettingsController: WKHostingController<SettingsView> {
    let settingsStore = AppState.shared.settings

    override func willActivate() {
        super.willActivate()
        setTitle("Settings")

        settingsStore.getNotificationStatus()
    }

    override var body: SettingsView {
        SettingsView()
    }
}
