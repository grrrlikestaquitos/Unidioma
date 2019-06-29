//
//  CharacterViewSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 6/25/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct CharacterViewSA: View {
    var model: CharacterModel
    
    var body: some View {
        VStack {
            Spacer()
            CharacterMeaningViewSA(pinying: model.pinyin, character: model.character, meaning: model.meaning)
            PhraseViewSA(phraseCharacters: model.phraseCharacters, pinyinForPhrase: model.pinyinForPhrase, meaningForPhrase: model.meaningForPhrase)
            Spacer()
        }
        
    }
}

struct CharacterViewSA_Previews: PreviewProvider {
    static var previews: some View {
        CharacterViewSA(model: CharacterModel(pinyin: "wǒ", character: "我", phraseCharacters: ["我","跑"], meaning: ["I; me; my"], pinyinForPhrase: ["wǒ","paǒ"], meaningForPhrase: "I run"))
    }
}
