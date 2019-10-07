import SwiftUI

struct KanjiCharacterSC : View {
    let kanji: String
    let furigana: String
    let romaji: String

    var body: some View {
        VStack {
            VStack {
                HKText(textSize: .eighteen, text: furigana, color: .orange, offset: (x: 0, y: 12)).hiragana
                HKText(textSize: .eighty, text: kanji)
                HKText(textSize: .thirteen, text: romaji, color: .red, offset: (x: 0, y: -8)).italic
            }
        }
    }
}

//#if DEBUG
//struct KanjiCharacterSC_Previews : PreviewProvider {
//    static var previews: some View {
//        KanjiCharacterSC()
//    }
//}
//#endif
