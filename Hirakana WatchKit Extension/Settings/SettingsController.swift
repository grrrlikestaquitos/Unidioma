import WatchKit
import Foundation
import SwiftUI
import Combine

class SettingsController: WKHostingController<SettingsView> {
    let settingsDataStore = SettingsDataStore()

    override func willActivate() {
        super.willActivate()
        setTitle("Settings")
    }

    override var body: SettingsView {
        SettingsView(dataStore: settingsDataStore)
    }

}
