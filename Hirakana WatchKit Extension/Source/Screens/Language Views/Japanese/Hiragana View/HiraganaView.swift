import SwiftUI

struct HiraganaView: View {
    let model: HiraganaModel

    var body: some View {
        VStack {
            Spacer()
            HKText(textType: .subtitle, text: "Hiragana")
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
            Spacer()
        }
    }
}
