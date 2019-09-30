import SwiftUI

struct HiraganaView: View {
    let model: HiraganaModel

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                HKText(textType: .kanjiMed, text: model.character)
                Spacer()
                Spacer()
                HKText(textType: .kanjiMed, text: model.romaji)
                Spacer()
            }
            Spacer()
            HKText(textType: .subtitle, text: "Hiragana - Alphabet")
            Spacer()
        }
    }
}
