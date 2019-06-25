//
//  KanjiDescriptionSB.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/23/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct KanjiDescriptionSB : View {
    var phrases: [String]

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                HKText(textType: .title, text: "Phrase:", color: .green)
                HKText(textType: .title, text: phrases[0], offset: (x: -4, y: 0))
            }
            HKText(textType: .title, text: phrases[1], color: .yellow)
            HKText(textType: .subtitle, text: phrases[2], lines: 2).italic
        }
    }
}

//#if DEBUG
//struct KanjiDescriptionSB_Previews : PreviewProvider {
//    static var previews: some View {
//        KanjiDescriptionSB()
//    }
//}
//#endif
