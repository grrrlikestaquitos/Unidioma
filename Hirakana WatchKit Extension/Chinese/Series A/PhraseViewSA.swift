//
//  PhraseViewSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 6/26/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

enum Constants {
    static let phrase = "Phrase"
}

struct PhraseViewSA: View {
    var phraseCharacters: [String]
    var pinyinForPhrase: [String]
    var meaningForPhrase: String
    
    var body: some View {
        VStack {
            HKText(textType: .title, text: Constants.phrase, color: .green, offset: (x: -30, y: 15))
            
            HStack {
                Spacer()
                HKText(textType: .title, text: meaningForPhrase, offset: (x: 10, y: 8))
                Spacer()
                PhraseCharacterViewSA(pinyinForPhrase: pinyinForPhrase[0], charactersForPhrase: phraseCharacters[0])
                PhraseCharacterViewSA(pinyinForPhrase: pinyinForPhrase[1], charactersForPhrase: phraseCharacters[1])
                Spacer()
            }
        }
    }
}

#if DEBUG
struct PhraseViewSA_Previews: PreviewProvider {
    static var previews: some View {
        PhraseViewSA(phraseCharacters: ["我","跑"], pinyinForPhrase: ["wǒ","paǒ"], meaningForPhrase: "I run")
    }
}
#endif
