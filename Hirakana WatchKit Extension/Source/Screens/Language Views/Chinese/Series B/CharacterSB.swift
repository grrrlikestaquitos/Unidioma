import SwiftUI

private enum Headers: String {
    case Meaning
}

struct CharacterSB: View {
    let pinyin: String
    let chineseCharacter: String
    let meaning: String
    
    var body: some View {
        HStack {
            VStack {
                HKText(textType: .pinyinTitle, text: pinyin, color: .orange, offset: (x: 0, y: 10))
                HKText(textType: .characterBig, text: chineseCharacter)
            }.offset(x: -5)
            VStack {
                HKText(textType: .title, text: Headers.Meaning.rawValue, color: .blue)
                HKText(textType: .subtitle, text: meaning)
            }.offset(x: 5)
        }
    }
}
