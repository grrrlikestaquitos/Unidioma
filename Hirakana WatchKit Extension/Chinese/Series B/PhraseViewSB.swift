//
//  PhraseViewSB.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 6/29/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct PhraseViewSB: View {
    var meaningOfPhrase: String
    var pinyingOfPhrase: [String]
    var charactersOfPhrase: [String]
    
    var body: some View {
        VStack {
            HKText(textType: .title, text: Constants.phrase, color: .green, offset: (x: 0, y: -8))
            HKText(textType: .title, text: meaningOfPhrase, offset: (x: 0, y: -5))
            HStack {
                PhraseCharacterViewSA(pinyinForPhrase: pinyingOfPhrase[0], charactersForPhrase: charactersOfPhrase[0])
                PhraseCharacterViewSA(pinyinForPhrase: pinyingOfPhrase[1], charactersForPhrase: charactersOfPhrase[1])
            }
        }
    }
}

#if DEBUG
struct PhraseViewSB_Previews: PreviewProvider {
    static var previews: some View {
        PhraseViewSB(meaningOfPhrase: "I run", pinyingOfPhrase: ["wǒ","paǒ"], charactersOfPhrase: ["我","跑"])
    }
}
#endif
