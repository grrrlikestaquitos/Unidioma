import SwiftUI

enum TextSize: CGFloat {
    case eighty = 80
    case seventy = 70
    case sixtyFive = 65
    case fifty = 50
    case twentyFive = 25
    case eighteen = 18
    case fourteen = 14
    case thirteen = 13
}

struct HKText : View {
    var textSize: TextSize
    var text: String
    var color: Color = .white
    var lines: Int = 1
    var offset: (x: CGFloat, y: CGFloat) = (x: 0, y: 0)

    var body: some View {
        Text(text)
            .font(.system(size: textSize.rawValue))
            .lineLimit(lines)
            .offset(x: offset.x, y: offset.y)
            .foregroundColor(color)
    }

    var italic: some View {
        Text(text)
            .italic()
            .font(.system(size: textSize.rawValue))
            .lineLimit(lines)
            .offset(x: offset.x, y: offset.y)
            .foregroundColor(color)
            .foregroundColor(color)
    }

    var hiragana: some View {
        Text(text)
            .kerning(6)
            .font(.system(size: textSize.rawValue))
            .lineLimit(lines)
            .offset(x: offset.x, y: offset.y)
            .foregroundColor(color)
    }
    
    var pinyin: some View {
        Text(text)
            .kerning(3)
            .font(.system(size: textSize.rawValue))
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
