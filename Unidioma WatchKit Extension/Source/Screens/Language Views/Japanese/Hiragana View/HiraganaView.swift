import SwiftUI

struct HiraganaView: View {
    let model: HiraganaModel

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                HKText(textSize: .seventy, text: model.character)
                Spacer()
                Spacer()
                if (model.romaji.count > 1) {
                    HKText(textSize: .fifty, text: model.romaji)
                } else {
                    HKText(textSize: .seventy, text: model.romaji)
                }
                Spacer()
            }
            Spacer()
            HKText(textSize: .thirteen, text: "Hiragana - Alphabet")
            Spacer()
        }
    }
}
