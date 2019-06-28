//
//  PhraseCharacterViewSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 6/27/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct PhraseCharacterViewSA: View {
    
    var pinyinForPhrase: String
    var charactersForPhrase: String
    
    var body: some View {
        VStack {
            HKText(textType: .pinyinSmall, text: pinyinForPhrase, color: .yellow, offset: (x: 0, y: 0))
            HKText(textType: .kanjiSmall, text: charactersForPhrase, color: .white, offset: (x: 0, y: 0))
        }
    }
}

struct PhraseCharacterViewSA_Previews: PreviewProvider {
    static var previews: some View {
        PhraseCharacterViewSA(pinyinForPhrase: "wǒ", charactersForPhrase: "我")
    }
}
