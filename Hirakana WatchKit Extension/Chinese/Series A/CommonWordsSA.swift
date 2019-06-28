//
//  CommonWordsSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 6/25/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

private enum Headers: String {
    case Phrase = "Phrase"
}

struct CommonWordsSA: View {
    
    var commonWords: [String]
    var pinyinForWords: [String]
    var meaningForWords: [String]
    
    var body: some View {
        VStack {
//            HKText(textType: .title, text: Headers.Phrase, color: .blue, offset: (x: 0, y: -5))
            HStack {
                Spacer()
//                CommonWordSA(commonWords: Array(commonWords[0...1]), pinyinForWords: Array(pinyinForWords[0...1]), meaningForWords: meaningForWords[0])
                Spacer()
//                CommonWordSA(commonWords:
//                    Array(commonWords[2...3]),
//                             pinyinForWords: Array(pinyinForWords[2...3]), meaningForWords: meaningForWords[1])
                Spacer()
            }
        }
    }
}

#if DEBUG
struct CommonWordsSA_Previews: PreviewProvider {
    static var previews: some View {
        CommonWordsSA(commonWords: ["我","们","自","我"], pinyinForWords: ["wǒ","mén","zì","wǒ"], meaningForWords: ["We", "Self"])
    }
}
#endif
