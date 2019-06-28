//
//  CharactorMeaningViewSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 6/26/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct CharactorMeaningViewSA: View {
    
    var pinying: String
    var charactor: String
    var meaning: [String]
    
    var body: some View {
        HStack {
            Spacer()
            CharacterSA(pinyin: pinying, charactor: charactor)
            Spacer(); MeaningViewSA(meanings: meaning)
            Spacer()
        }
    }
}

struct CharactorMeaningViewSA_Previews: PreviewProvider {
    static var previews: some View {
        CharactorMeaningViewSA(pinying: "wǒ", charactor: "我", meaning: ["I; me; my"])
    }
}
