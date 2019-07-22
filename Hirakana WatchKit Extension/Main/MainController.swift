//
//  HostingController.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/22/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import WatchKit
import SwiftUI

final class MainController : WKHostingController<HirakanaView> {
    let settingsStore = mainStore.settings

    var model: LanguageModel {
        return settingsStore.languageModel[0]
    }

    override func willActivate() {
        super.willActivate()
        setTitle(model.language)
    }

    
    override var body: HirakanaView {
        switch model.language {
            case Language.Japanese.rawValue:
                return HirakanaView(viewType: .kanji(Series.B))
            case Language.Chinese.rawValue:
                return HirakanaView(viewType: .character(Series.B))
            default:
                return HirakanaView(viewType: .kanji(Series.B))
        }
    }
}
