//
//  DescriptionSB.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 9/8/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct DescriptionSB : View {
    var englishPhrase: String
    var chinesePhrasePinyin: String
    var chinesePhraseCharacters: String

    var body: some View {
        HStack {
            VStack {
                HKText(textType: .title, text: "Phrase:", color: .green)
                HKText(textType: .title, text: englishPhrase)
            }.offset(x: -8)
            VStack {
                HKText(textType: .title, text: chinesePhrasePinyin, color: .yellow)
                HKText(textType: .subtitle, text: chinesePhraseCharacters).italic
            }.offset(x: 8)
        }
    }
}
