import SwiftUI

struct KanjiViewSA : View {
    var model: KanjiModel

    var body: some View {
        VStack {
            Spacer()
            HStack {
                KanjiCharacterSA(furigana: model.furigana,
                                 kanji: model.character,
                                 romaji: model.romaji)
                KanjiDescriptionSA(meaning: model.meaning,
                                   englishPhrase: model.englishPhrase,
                                   japanesePhrase: model.japanesePhrase,
                                   romajiPhrase: model.romajiPhrase)
            }
            Spacer()
        }
    }
}

//#if DEBUG
//struct KanjiViewSA_Previews : PreviewProvider {
//    static var previews: some View {
//        KanjiViewSA(model: KanjiModel(hiragana: "わたし",
//                                      kanji: "私",
//                                      romaji: "wa-ta-shi",
//                                      meanings: ["I; Me"],
//                                      phrases: ["I fell", "私は落ちた", "Watashi wa ochita"]))
//    }
//}
//#endif
