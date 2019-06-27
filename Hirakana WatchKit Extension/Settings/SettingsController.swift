//
//  SettingsController.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/24/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

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
