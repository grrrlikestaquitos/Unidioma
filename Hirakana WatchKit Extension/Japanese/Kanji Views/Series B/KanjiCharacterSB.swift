//
//  KanjiCharacterSB.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/23/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct KanjiCharacterSB : View {
    var kanji: String
    var hiragana: String
    var romaji: String

    var meanings: [String]

    var body: some View {
        HStack {
            VStack {
                HKText(textType: .largeTitle, text: hiragana, color: .orange, offset: (x: 0, y: 12)).hiragana
                HKText(textType: .kanjiMed, text: kanji)
            }
            VStack(alignment: .leading) {
                HKText(textType: .title, text: "Meaning", color: .blue)
                HKText(textType: .subtitle, text: meanings[0])
                HKText(textType: .title, text: "Romaji", color: .red)
                HKText(textType: .subtitle, text: romaji).italic
            }
        }
    }
}

//#if DEBUG
//struct KanjiCharacterSB_Previews : PreviewProvider {
//    static var previews: some View {
//        KanjiCharacterSB()
//    }
//}
//#endif
