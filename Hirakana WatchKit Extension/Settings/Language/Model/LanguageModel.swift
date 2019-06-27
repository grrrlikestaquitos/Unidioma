//
//  LanguageState.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/25/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct LanguageModel: Codable, Identifiable {
    var id: Int
    var language: String
    var isEnabled: Bool

    init(_ id: Int, _ language: String, _ isEnabled: Bool) {
        self.id = id
        self.language = language
        self.isEnabled = isEnabled
    }
}
