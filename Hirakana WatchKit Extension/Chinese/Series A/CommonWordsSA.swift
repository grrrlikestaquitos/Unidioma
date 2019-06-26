//
//  CommonWordsSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 6/25/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

private enum Headers: String {
    case Phrases
}

struct CommonWordsSA: View {
    
    var commonWords: [String]
    var pinyinForWords: [String]
    
    var body: some View {
        VStack(alignment: .center) {
            HKText(textType: .title, text: Headers.Phrases.rawValue, color: .blue)
            CommonWordSA(commonWords: Array(commonWords[0...1]), pinyinForWords: Array(pinyinForWords[0...1]))
            CommonWordSA(commonWords:
            Array(commonWords[2...3]),
                         pinyinForWords: Array(pinyinForWords[2...3]))
        }
        
    }
}

#if DEBUG
struct CommonWordsSA_Previews: PreviewProvider {
    static var previews: some View {
        CommonWordsSA(commonWords: ["我","们","自","我"], pinyinForWords: ["wǒ","mén","zì","wǒ"])
    }
}
#endif
