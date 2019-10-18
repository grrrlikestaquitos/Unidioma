import SwiftUI

struct KanjiCharacterSB : View {
    let kanji: String
    let furigana: String
    let romaji: String
    let meaning: String

    var body: some View {
        HStack {
            VStack {
                HKText(textSize: .eighteen, text: furigana, color: .orange, offset: (x: 0, y: 12)).hiragana
                HKText(textSize: .seventy, text: kanji)
            }
            VStack(alignment: .leading) {
                HKText(textSize: .fourteen, text: "Meaning", color: .blue)
                HKText(textSize: .thirteen, text: meaning)
                Spacer()
                HKText(textSize: .fourteen, text: "Romaji", color: .red)
                HKText(textSize: .thirteen, text: romaji).italic
            }
        }
    }
}

//#if DEBUG
//struct KanjiCharacterSB_Previews : PreviewProvider {
//    static var previews: some View {
//        KanjiCharacterSB()
//    }
//}
//#endif
