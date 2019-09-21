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
