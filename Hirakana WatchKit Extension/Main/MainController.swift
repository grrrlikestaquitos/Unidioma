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
    
    var language: String = "" {
        didSet {
            if oldValue != language && !oldValue.isEmpty {
                switchedLanguage = true
            }
        }
    }
    var switchedLanguage: Bool = false
    
    override var body: HirakanaView {
        self.language = getLanguageFromSettings()
        
        switch language {
        case Language.Japanese.rawValue:
            return HirakanaView(viewType: .kanji(Series.B))
        case Language.Chinese.rawValue:
            return HirakanaView(viewType: .character(Series.B))
        default:
            return HirakanaView(viewType: .kanji(Series.B))
        }
    }
    
    override func willActivate() {
        super.willActivate()
        self.language = getLanguageFromSettings()
        
        switch language {
        case Language.Japanese.rawValue:
            setTitle(Language.Japanese.rawValue)
        case Language.Chinese.rawValue:
            setTitle(Language.Chinese.rawValue)
        default:
            setTitle(Language.Japanese.rawValue)
        }
        
        if self.switchedLanguage {
            self.setNeedsBodyUpdate()
            self.switchedLanguage = false
        }
    }
    
    
    func getLanguageFromSettings() -> String {
        // If there is no language model store in UserDefault, return Japanese.
        guard let languageData = UserDefaults.standard.data(forKey: Key.languages.rawValue), let languageModels = try? JSONDecoder().decode([LanguageModel].self, from: languageData) else {
            return Language.Japanese.rawValue
        }
        
        for model in languageModels {
            if model.isEnabled {
                return model.language
            }
        }
        
        return Language.Japanese.rawValue
    }
}
