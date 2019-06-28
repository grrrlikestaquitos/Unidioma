//
//  CharacterSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 6/25/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct CharacterSA: View {
    
    var pinyin: String
    var charactor: String
    
    var body: some View {
        VStack(alignment: .center) {
            HKText(textType: .pinyinTitle, text: pinyin, color: .orange, offset: (x: 0, y: 12)).pinyin
            HKText(textType: .characterBig, text: charactor)
        }
    }
}

#if DEBUG
struct CharacterSA_Previews: PreviewProvider {
    static var previews: some View {
        CharacterSA(pinyin: "wǒ", charactor: "我")
    }
}
#endif
