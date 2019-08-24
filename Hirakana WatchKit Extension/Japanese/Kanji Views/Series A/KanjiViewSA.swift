import SwiftUI

struct KanjiViewSA : View {
    var model: KanjiModel

    var body: some View {
        HStack {
            KanjiCharacterSA(hiragana: model.hiragana,
                             kanji: model.kanji,
                             romaji: model.romaji)
            Spacer()
            KanjiDescriptionSA(meanings: model.meanings, phrases: model.phrases)
        }
    }
}

#if DEBUG
struct KanjiViewSA_Previews : PreviewProvider {
    static var previews: some View {
        KanjiViewSA(model: KanjiModel(hiragana: "わたし",
                                      kanji: "私",
                                      romaji: "wa-ta-shi",
                                      meanings: ["I; Me"],
                                      phrases: ["I fell", "私は落ちた", "Watashi wa ochita"]))
    }
}
#endif
