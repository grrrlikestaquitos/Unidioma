import SwiftUI

struct KanjiDescriptionSB : View {
    let englishPhrase: String
    let japanesePhrase: String
    let romajiPhrase: String

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                HKText(textSize: .fourteen, text: "Phrase:", color: .green)
                HKText(textSize: .fourteen, text: englishPhrase, offset: (x: -4, y: 0))
            }
            HKText(textSize: .fourteen, text: japanesePhrase, color: .yellow)
            HKText(textSize: .thirteen, text: romajiPhrase, lines: 2).italic
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
