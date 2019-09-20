//
//  CharacterViewSB.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 7/1/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct CharacterViewSB: View {
    var model: CharacterModel
    
    var body: some View {
        VStack {
            CharacterSB(pinyin: model.pinyin, chineseCharacter: model.chineseCharacter, meaning: model.meaning).offset(y: 10)
            Spacer()
            DescriptionSB(englishPhrase: model.englishPhrase, chinesePhrasePinyin: model.chinesePhrasePinyin, chinesePhraseCharacters: model.chinesePhraseCharacters).offset(y: 5)
        }
    }
}
