import SwiftUI

struct DescriptionSB : View {
    let englishPhrase: String
    let chinesePhrasePinyin: String
    let chinesePhraseCharacters: String

    var body: some View {
        HStack {
            VStack {
                HKText(textSize: .fourteen, text: "Phrase:", color: .green)
                HKText(textSize: .fourteen, text: englishPhrase)
            }.offset(x: -8)
            VStack {
                HKText(textSize: .fourteen, text: chinesePhrasePinyin, color: .yellow)
                HKText(textSize: .thirteen, text: chinesePhraseCharacters).italic
            }.offset(x: 8)
        }
    }
}
