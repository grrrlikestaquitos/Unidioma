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
        HStack {
            Spacer()
            CharacterSB(pinyin: model.pinyin, character: model.character)
            Spacer()
            VStack {
                Spacer()
                MeaningViewSA(meanings: model.meaning)
                Spacer()
                PhraseViewSB(meaningOfPhrase: model.meaningForPhrase, pinyingOfPhrase: model.pinyinForPhrase, charactersOfPhrase: model.phraseCharacters)

            }
            Spacer()
        }
    }
}

#if DEBUG
struct CharacterViewSB_Previews: PreviewProvider {
    static var previews: some View {
        CharacterViewSB(model: CharacterModel(pinyin: "wǒ", character: "我", phraseCharacters: ["我","跑"], meaning: ["I; me; my"], pinyinForPhrase: ["wǒ","paǒ"], meaningForPhrase: "I run"))
    }
}
#endif
