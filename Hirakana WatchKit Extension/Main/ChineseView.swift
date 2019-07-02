//
//  ChineseView.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 6/26/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct ChineseView: View {
    var viewType: ViewType? = .character(Series.B)
    let characterModel = CharacterModel(pinyin: "wǒ", character: "我", phraseCharacters: ["我","跑"], meaning: ["I; me; my"], pinyinForPhrase: ["wǒ","paǒ"], meaningForPhrase: "I run")
    
    var body: some View {
        CharacterViewSB(model: characterModel)
    }
}
