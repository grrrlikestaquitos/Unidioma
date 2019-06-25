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
    let view = SettingsView()

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)

        view.pagePressed.sink { page in
            print("Page pressed \(page)")
            switch page {
            case .Languages:
                self.pushController(withName: "LanguagesController", context: nil)
//                self.presentController(withName: "LanguagesController", context: nil)
            }
        }
    }

    override func willActivate() {
        super.willActivate()
        setTitle("Settings")
    }

    override var body: SettingsView {
        return view
    }

}
