import WatchKit
import Foundation
import SwiftUI
import Combine

final class SettingsController: WKHostingController<SettingsView> {

    override func willActivate() {
        super.willActivate()
        setTitle("Settings")
    }

    override var body: SettingsView {
        SettingsView()
    }
}
