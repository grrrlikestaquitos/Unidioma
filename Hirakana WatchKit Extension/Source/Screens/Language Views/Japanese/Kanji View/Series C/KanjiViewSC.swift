import SwiftUI

struct KanjiViewSC : View {
    let model: KanjiModel

    var body: some View {
            KanjiCharacterSC(kanji: model.character,
                             furigana: model.furigana,
                             romaji: model.romaji)
    }
}

#if DEBUG
struct KanjiViewSC_Previews : PreviewProvider {
    static let model = KanjiModel.example

    static var previews: some View {
        KanjiViewSC(model: model)
    }
}
#endif
