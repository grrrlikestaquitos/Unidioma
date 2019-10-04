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
            HKText(textSize: .fourteen, text: Headers.Meaning.rawValue, color: .blue)
            HKText(textSize: .thirteen, text: meaning)
            Spacer()
            HKText(textSize: .fourteen, text: Headers.Phrase.rawValue, color: .green)
            HKText(textSize: .thirteen, text: englishPhrase)
            HKText(textSize: .thirteen, text: chinesePhrasePinyin, color: .yellow).offset(y: 5)
            HKText(textSize: .thirteen, text: chinesePhraseCharacters).offset(y:5)
        }
    }
}
