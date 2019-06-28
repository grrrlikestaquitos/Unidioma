//
//  CharacterMeaningViewSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 6/26/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct CharacterMeaningViewSA: View {
    var pinying: String
    var character: String
    var meaning: [String]
    
    var body: some View {
        HStack {
            Spacer()
            CharacterSA(pinyin: pinying, character: character)
            Spacer()
            MeaningViewSA(meanings: meaning)
            Spacer()
        }
    }
}

struct CharacterMeaningViewSA_Previews: PreviewProvider {
    static var previews: some View {
        CharacterMeaningViewSA(pinying: "wǒ", character: "我", meaning: ["I; me; my"])
    }
}
