import WatchKit
import Foundation
import SwiftUI
import Combine

final class SettingsController: WKHostingController<SettingsView> {
    let settingsDataStore = mainStore.settings

    override func willActivate() {
        super.willActivate()
        setTitle("Settings")
    }

    override var body: SettingsView {
        SettingsView(dataStore: settingsDataStore)
    }
}
