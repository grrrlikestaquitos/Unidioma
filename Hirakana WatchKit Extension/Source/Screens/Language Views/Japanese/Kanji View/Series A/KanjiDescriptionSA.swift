//
//  KanjiDescriptionSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/23/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

private enum Headers: String {
    case Meaning
    case Phrase
}

struct KanjiDescriptionSA : View  {
    let meaning: String
    let englishPhrase: String
    let japanesePhrase: String
    let romajiPhrase: String

    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            HKText(textType: .title, text: Headers.Meaning.rawValue, color: .blue)
            HKText(textType: .subtitle, text: meaning)
            Spacer()
            HKText(textType: .title, text: Headers.Phrase.rawValue, color: .green)
            HKText(textType: .subtitle, text: englishPhrase)
            HKText(textType: .subtitle, text: japanesePhrase, color: .yellow)
            HKText(textType: .subtitle, text: romajiPhrase, lines: 2).italic
        }
    }
}

//#if DEBUG
//struct KanjiDescriptionSA_Previews : PreviewProvider {
//    static var previews: some View {
//        KanjiDescriptionSA(meanings: ["I; Me"], phrases: ["I fell", "私は落ちた", "Watashi wa ochita"])
//    }
//}
//#endif
