//
//  CommonWordSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 6/26/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct CommonWordSA: View {
    
    var commonWords: [String]
    var pinyinForWords: [String]
    
    var body: some View {
        HStack(alignment: .center) {
            CommonWordsCharacterSA(pinyin: pinyinForWords[0], character: commonWords[0])
            CommonWordsCharacterSA(pinyin: pinyinForWords[1], character: commonWords[1])
        }
    }
}

#if DEBUG
struct CommonWordSA_Previews: PreviewProvider {
    static var previews: some View {
        CommonWordSA(commonWords: ["我","们"], pinyinForWords: ["wǒ","mén"])
    }
}
#endif
