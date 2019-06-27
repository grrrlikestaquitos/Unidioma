//
//  SettingsDataStore.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/25/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI
import Combine

final class SettingsDataStore: BindableObject {
    let didChange = PassthroughSubject<Void, Never>()

    static let defaultLanguageSetting: [LanguageModel] = [
        .init(0, "Japanese", true),
        .init(1, "Chinese", false)
    ]

    @SettingsUserDefaults(key: .languages, defaultValue: defaultLanguageSetting)
    var languageModel: [LanguageModel] {
        didSet {
            didChange.send()
        }
    }
    
}
