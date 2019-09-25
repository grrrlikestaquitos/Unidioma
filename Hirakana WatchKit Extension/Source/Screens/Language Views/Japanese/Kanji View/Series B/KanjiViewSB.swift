import SwiftUI

struct KanjiViewSB : View {
    let model: KanjiModel

    var body: some View {
        VStack {
            KanjiCharacterSB(kanji: model.character,
                             furigana: model.furigana,
                             romaji: model.romaji,
                             meaning: model.meaning)
            Spacer()
            KanjiDescriptionSB(englishPhrase: model.englishPhrase,
                               japanesePhrase: model.japanesePhrase,
                               romajiPhrase: model.romajiPhrase)
            Spacer()
        }
    }
}

//#if DEBUG
//struct KanjiViewSB_Previews : PreviewProvider {
//    static var previews: some View {
//        KanjiViewSB()
//    }
//}
//#endif
