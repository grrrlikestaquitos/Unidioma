//
//  KanjiCharacterSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/23/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct KanjiCharacterSA : View {
    var hiragana: String
    var kanji: String
    var romaji: String

    var body: some View {
        VStack(alignment: .center) {
            HKText(textType: .largeTitle, text: hiragana, color: .orange, offset: (x: 0, y: 12)).hiragana
            HKText(textType: .kanjiBig, text: kanji)
            HKText(textType: .title, text: romaji, color: .red, offset: (x: 0, y: -4)).italic
        }
    }
}

#if DEBUG
struct KanjiCharacterSA_Previews : PreviewProvider {
    static var previews: some View {
        KanjiCharacterSA(hiragana: "わたし", kanji: "私", romaji: "wa-ta-shi")
    }
}
#endif
