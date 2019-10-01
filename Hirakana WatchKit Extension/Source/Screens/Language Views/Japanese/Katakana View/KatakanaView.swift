import SwiftUI

struct KatakanaView: View {
    let model: KatakanaModel

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
            HKText(textType: .subtitle, text: "Katakana - Alphabet")
            Spacer()
        }
    }
}
