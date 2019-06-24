//
//  KanjiViewSB.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/23/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct KanjiViewSB : View {
    var model: KanjiModel

    var body: some View {
        VStack {
            KanjiCharacterSB(kanji: model.kanji,
                             hiragana: model.hiragana,
                             romaji: model.romaji,
                             meanings: model.meanings)
            Spacer()
            KanjiDescriptionSB(phrases: model.phrases)
        }
    }
}

//#if DEBUG
//struct KanjiViewSB_Previews : PreviewProvider {
//    static var previews: some View {
//        KanjiViewSB()
//    }
//}
//#endif
