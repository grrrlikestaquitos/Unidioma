import WatchKit
import SwiftUI

final class SettingsController: WKHostingController<SettingsView> {
    override func willActivate() {
        super.willActivate()
        setTitle("Settings")
    }

    override var body: SettingsView {
        SettingsView()
    }
}
