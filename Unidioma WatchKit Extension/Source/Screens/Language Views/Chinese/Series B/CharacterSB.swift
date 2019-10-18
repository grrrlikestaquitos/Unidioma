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
                HKText(textSize: .twentyFive, text: pinyin, color: .orange, offset: (x: 0, y: 10))
                HKText(textSize: .sixtyFive, text: chineseCharacter)
            }.offset(x: -5)
            VStack {
                HKText(textSize: .fourteen, text: Headers.Meaning.rawValue, color: .blue)
                HKText(textSize: .thirteen, text: meaning)
            }.offset(x: 5)
        }
    }
}
