import SwiftUI

struct KanjiCharacterSA : View {
    let furigana: String
    let kanji: String
    let romaji: String

    var body: some View {
        VStack(alignment: .center) {
            HKText(textSize: .eighteen, text: furigana, color: .orange, offset: (x: 0, y: 12)).hiragana
            HKText(textSize: .eighty, text: kanji)
            HKText(textSize: .fourteen, text: romaji, color: .red, offset: (x: 0, y: -4)).italic
        }
    }
}

//#if DEBUG
//struct KanjiCharacterSA_Previews : PreviewProvider {
//    static var previews: some View {
//        KanjiCharacterSA(hiragana: "わたし", kanji: "私", romaji: "wa-ta-shi")
//    }
//}
//#endif
