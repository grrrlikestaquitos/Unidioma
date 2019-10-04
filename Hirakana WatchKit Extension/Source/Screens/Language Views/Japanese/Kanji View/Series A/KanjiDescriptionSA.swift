import SwiftUI

private enum Headers: String {
    case Meaning
    case Phrase
}

struct KanjiDescriptionSA : View  {
    let meaning: String
    let englishPhrase: String
    let japanesePhrase: String
    let romajiPhrase: String

    var body: some View {
        VStack(alignment: .leading) {
            Spacer()
            HKText(textSize: .fourteen, text: Headers.Meaning.rawValue, color: .blue)
            HKText(textSize: .thirteen, text: meaning)
            Spacer()
            HKText(textSize: .fourteen, text: Headers.Phrase.rawValue, color: .green)
            HKText(textSize: .thirteen, text: englishPhrase)
            HKText(textSize: .thirteen, text: japanesePhrase, color: .yellow)
            HKText(textSize: .thirteen, text: romajiPhrase, lines: 2).italic
        }
    }
}

//#if DEBUG
//struct KanjiDescriptionSA_Previews : PreviewProvider {
//    static var previews: some View {
//        KanjiDescriptionSA(meanings: ["I; Me"], phrases: ["I fell", "私は落ちた", "Watashi wa ochita"])
//    }
//}
//#endif
