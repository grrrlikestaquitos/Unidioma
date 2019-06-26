//
//  CommonWordsCharacterSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 6/25/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct CommonWordsCharacterSA: View {
    
    var pinyin: String
    var character: String
    
    var body: some View {
        VStack(alignment: .center) {
            HKText(textType: .subtitle, text: pinyin, color: .green)
            HKText(textType: .kanjiSmall, text: character)
        }
    }
}

#if DEBUG
struct CommonWordsCharacterSA_Previews: PreviewProvider {
    static var previews: some View {
        CommonWordsCharacterSA(pinyin: "wǒ", character: "我")
    }
}
#endif
