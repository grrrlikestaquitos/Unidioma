//
//  CharactorViewSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 6/25/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct CharactorViewSA: View {
    
    var model: CharactorModel
    
    var body: some View {
        VStack {
            Spacer(); CharactorMeaningViewSA(pinying: model.pinyin, charactor: model.charactor, meaning: model.meaning)
            PhraseViewSA(phraseCharacters: model.phraseCharacters, pinyinForPhrase: model.pinyinForPhrase, meaningForPhrase: model.meaningForPhrase)
            Spacer()
        }
        
    }
}

struct CharactorViewSA_Previews: PreviewProvider {
    static var previews: some View {
        CharactorViewSA(model: CharactorModel(pinyin: "wǒ", charactor: "我", phraseCharacters: ["我","跑"], meaning: ["I; me; my"], pinyinForPhrase: ["wǒ","paǒ"], meaningForPhrase: "I run"))
    }
}
