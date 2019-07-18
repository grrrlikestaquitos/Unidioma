import WatchKit
import Foundation
import SwiftUI
import Combine

class SettingsController: WKHostingController<SettingsView> {
    let settingsDataStore = SettingsDataStore()

    override func willActivate() {
        super.willActivate()
        setTitle("Settings")

        let http = HTTP()

        http.request(endpoint: .range(.kanji, ((from: 0, to: 5))),
                     model: [String: String].self) { response in
            switch (response) {
                case .success(let data):
                    print("data: \(data)")
                case .failure(let error):
                    print(error)
                break
            }
        }
    }

    override var body: SettingsView {
        SettingsView(dataStore: settingsDataStore)
    }
}
