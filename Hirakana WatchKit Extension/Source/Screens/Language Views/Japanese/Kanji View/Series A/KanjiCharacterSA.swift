import SwiftUI

struct KanjiCharacterSA : View {
    let furigana: String
    let kanji: String
    let romaji: String

    var body: some View {
        VStack(alignment: .center) {
            HKText(textType: .largeTitle, text: furigana, color: .orange, offset: (x: 0, y: 12)).hiragana
            HKText(textType: .kanjiBig, text: kanji)
            HKText(textType: .title, text: romaji, color: .red, offset: (x: 0, y: -4)).italic
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