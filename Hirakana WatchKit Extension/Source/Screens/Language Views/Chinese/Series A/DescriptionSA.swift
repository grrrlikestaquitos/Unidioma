import SwiftUI

private enum Headers: String {
    case Meaning
    case Phrase
}

struct DescriptionSA : View  {
    let meaning: String
    let englishPhrase: String
    let chinesePhrasePinyin: String
    let chinesePhraseCharacters: String

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
