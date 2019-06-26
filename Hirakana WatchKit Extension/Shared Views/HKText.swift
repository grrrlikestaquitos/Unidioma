//
//  HKTexts.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/23/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

enum TextType {
    case largeTitle, title, subtitle, kanjiBig, kanjiMed, kanjiSmall, pinyinTitle, pinyinSmall
}

struct HKText : View {
    var textType: TextType
    var text: String
    var color: Color = .white
    var lines: Int = 1
    var offset: (x: CGFloat, y: CGFloat) = (x: 0, y: 0)

    private var fontSize: CGFloat {
        switch textType {
        case .largeTitle:
            return 18
        case .title:
            return 14
        case .subtitle:
            return 13
        case .kanjiBig:
            return 80
        case .kanjiMed:
            return 70
        case .kanjiSmall:
            return 18
        case .pinyinTitle:
            return 28
        case .pinyinSmall:
            return 10
        }
    }

    var body: some View {
        Text(text)
            .font(.system(size: fontSize))
            .color(color)
            .lineLimit(lines)
            .offset(x: offset.x, y: offset.y)
    }

    var italic: some View {
        Text(text)
            .font(.system(size: fontSize))
            .color(color)
            .italic()
            .lineLimit(lines)
            .offset(x: offset.x, y: offset.y)
    }

    var hiragana: some View {
        Text(text)
            .font(.system(size: fontSize))
            .color(color)
            .kerning(6)
            .lineLimit(lines)
            .offset(x: offset.x, y: offset.y)
    }
    
    var pinyin: some View {
        Text(text)
            .font(.system(size: fontSize))
            .color(color)
            .kerning(3)
            .lineLimit(lines)
            .offset(x: offset.x, y: offset.y)
    }
}

//#if DEBUG
//struct HKTexts_Previews : PreviewProvider {
//    static var previews: some View {
//        HKTexts()
//    }
//}
//#endif
