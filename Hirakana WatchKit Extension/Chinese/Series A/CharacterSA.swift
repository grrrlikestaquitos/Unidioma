//
//  CharacterSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 6/25/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct CharacterSA: View {
    var pinyin: String
    var chineseCharacter: String
    
    var body: some View {
        VStack {
            HKText(textType: .pinyinTitle, text: pinyin, color: .orange).pinyin
            HKText(textType: .characterBig, text: chineseCharacter)
        }
    }
}
