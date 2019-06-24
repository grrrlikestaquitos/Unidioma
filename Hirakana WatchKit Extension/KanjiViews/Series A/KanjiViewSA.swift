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
            KanjiCharacterSA(hiragana: model.hiragana,
                             kanji: model.kanji,
                             romaji: model.romaji)
            Spacer()
            KanjiDescriptionSA(meanings: model.meanings, phrases: model.phrases)
        }
    }
}

//#if DEBUG
//struct KanjiViewSA_Previews : PreviewProvider {
//    static var previews: some View {
//        KanjiViewSA()
//    }
//}
//#endif
