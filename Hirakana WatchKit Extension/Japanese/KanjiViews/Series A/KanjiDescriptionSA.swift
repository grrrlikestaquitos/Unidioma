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
    var meanings: [String]
    var phrases: [String]

    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            HKText(textType: .title, text: Headers.Meaning.rawValue, color: .blue)
            HKText(textType: .subtitle, text: meanings[0])
            Spacer()
            HKText(textType: .title, text: Headers.Phrase.rawValue, color: .green)
            HKText(textType: .subtitle, text: phrases[0])
            HKText(textType: .subtitle, text: phrases[1], color: .yellow)
            HKText(textType: .subtitle, text: phrases[2], lines: 2).italic
        }
    }
}

#if DEBUG
struct KanjiDescriptionSA_Previews : PreviewProvider {
    static var previews: some View {
        KanjiDescriptionSA(meanings: ["I; Me"], phrases: ["I fell", "私は落ちた", "Watashi wa ochita"])
    }
}
#endif
