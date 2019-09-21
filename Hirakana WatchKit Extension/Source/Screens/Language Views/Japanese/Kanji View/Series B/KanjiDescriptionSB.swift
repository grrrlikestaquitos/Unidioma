import SwiftUI

struct KanjiDescriptionSB : View {
    let englishPhrase: String
    let japanesePhrase: String
    let romajiPhrase: String

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                HKText(textType: .title, text: "Phrase:", color: .green)
                HKText(textType: .title, text: englishPhrase, offset: (x: -4, y: 0))
            }
            HKText(textType: .title, text: japanesePhrase, color: .yellow)
            HKText(textType: .subtitle, text: romajiPhrase, lines: 2).italic
        }
    }
}

//#if DEBUG
//struct KanjiDescriptionSB_Previews : PreviewProvider {
//    static var previews: some View {
//        KanjiDescriptionSB()
//    }
//}
//#endif
