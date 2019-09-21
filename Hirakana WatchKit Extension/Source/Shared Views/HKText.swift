import SwiftUI

enum TextType {
    case largeTitle, title, subtitle, kanjiBig, kanjiMed, kanjiSmall, pinyinTitle, pinyinSmall, characterBig
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
            return 25
        case .pinyinSmall:
            return 10
        case .characterBig:
            return 65
        }
    }

    var body: some View {
        Text(text)
            .font(.system(size: fontSize))
            .lineLimit(lines)
            .offset(x: offset.x, y: offset.y)
            .foregroundColor(color)
    }

    var italic: some View {
        Text(text)
            .italic()
            .font(.system(size: fontSize))
            .lineLimit(lines)
            .offset(x: offset.x, y: offset.y)
            .foregroundColor(color)
            .foregroundColor(color)
    }

    var hiragana: some View {
        Text(text)
            .kerning(6)
            .font(.system(size: fontSize))
            .lineLimit(lines)
            .offset(x: offset.x, y: offset.y)
            .foregroundColor(color)
    }
    
    var pinyin: some View {
        Text(text)
            .kerning(3)
            .font(.system(size: fontSize))
            .lineLimit(lines)
            .offset(x: offset.x, y: offset.y)
            .foregroundColor(color)
    }
}

//#if DEBUG
//struct HKText_Previews : PreviewProvider {
//    static var previews: some View {
//        HKText()
//    }
//}
//#endif
