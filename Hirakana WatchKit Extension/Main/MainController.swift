//
//  HostingController.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/22/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import WatchKit
import Foundation
import SwiftUI

class MainController : WKHostingController<HirakanaView> {
    override func willActivate() {
        super.willActivate()
        setTitle("Japanese")
    }

    override var body: HirakanaView {
        HirakanaView(viewType: .kanji(Series.A))
    }
}

// MARK: MainController for Chinese 
//class MainController : WKHostingController<ChineseView> {
//    override func willActivate() {
//        super.willActivate()
//        setTitle("Chinese")
//    }
//
//    override var body: ChineseView {
//        ChineseView(viewType: .character(Series.B))
//    }
//}
