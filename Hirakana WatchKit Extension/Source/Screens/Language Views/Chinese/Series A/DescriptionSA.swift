//
//  DescriptionSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 9/8/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

private enum Headers: String {
    case Meaning
    case Phrase
}

struct DescriptionSA : View  {
    let meaning: String
    var englishPhrase: String
    var chinesePhrasePinyin: String
    var chinesePhraseCharacters: String

    var body: some View {
        VStack {
            Spacer()
            HKText(textType: .title, text: Headers.Meaning.rawValue, color: .blue)
            HKText(textType: .subtitle, text: meaning)
            Spacer()
            HKText(textType: .title, text: Headers.Phrase.rawValue, color: .green)
            HKText(textType: .subtitle, text: englishPhrase)
            HKText(textType: .subtitle, text: chinesePhrasePinyin, color: .yellow).offset(y: 5)
            HKText(textType: .subtitle, text: chinesePhraseCharacters).offset(y:5)
        }
    }
}
