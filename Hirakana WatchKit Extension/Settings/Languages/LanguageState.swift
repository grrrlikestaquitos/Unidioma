//
//  LanguageState.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/25/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct LanguageState: Identifiable {
    var id: Int

    var language: String
    var state: Bool

    init(_ id: Int, _ language: String, _ state: Bool) {
        self.id = id
        self.language = language
        self.state = state
    }
}
