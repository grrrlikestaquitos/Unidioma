//
//  CharacterSB.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 7/1/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct CharacterSB: View {
    var pinyin: String
    var character: String
    
    var body: some View {
        VStack {
            HKText(textType: .pinyinTitle, text: pinyin, color: .orange, offset: (x: 0, y: 0))
            HKText(textType: .characterBig, text: character, offset: (x: 0, y: 0))
        }
    }
}

#if DEBUG
struct CharacterSB_Previews: PreviewProvider {
    static var previews: some View {
        CharacterSB(pinyin: "wǒ", character: "我")
    }
}
#endif
