//
//  KanjiViewSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/23/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct KanjiViewSA : View {
    var model: KanjiModel

    var body: some View {
        HStack {
            KanjiCharacterSA(furigana: model.furigana,
                             kanji: model.character,
                             romaji: model.romaji)
            Spacer()
            KanjiDescriptionSA(meaning: model.meaning,
                               englishPhrase: model.englishPhrase,
                               japanesePhrase: model.japanesePhrase,
                               romajiPhrase: model.romajiPhrase)
        }
    }
}

//#if DEBUG
//struct KanjiViewSA_Previews : PreviewProvider {
//    static var previews: some View {
//        KanjiViewSA(model: KanjiModel(hiragana: "わたし",
//                                      kanji: "私",
//                                      romaji: "wa-ta-shi",
//                                      meanings: ["I; Me"],
//                                      phrases: ["I fell", "私は落ちた", "Watashi wa ochita"]))
//    }
//}
//#endif
