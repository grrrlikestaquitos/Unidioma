import SwiftUI

struct KanjiCharacterSB : View {
    let kanji: String
    let furigana: String
    let romaji: String
    let meaning: String

    var body: some View {
        HStack {
            VStack {
                HKText(textType: .largeTitle, text: furigana, color: .orange, offset: (x: 0, y: 12)).hiragana
                HKText(textType: .kanjiMed, text: kanji)
            }
            VStack(alignment: .leading) {
                HKText(textType: .title, text: "Meaning", color: .blue)
                HKText(textType: .subtitle, text: meaning)
                Spacer()
                HKText(textType: .title, text: "Romaji", color: .red)
                HKText(textType: .subtitle, text: romaji).italic
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
