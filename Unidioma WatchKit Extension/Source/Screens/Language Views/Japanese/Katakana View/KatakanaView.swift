import SwiftUI

struct KatakanaView: View {
    let model: KatakanaModel

    var body: some View {
        VStack {
            Spacer()
            HStack {
                Spacer()
                HKText(textSize: .seventy, text: model.character)
                Spacer()
                Spacer()
                HKText(textSize: .seventy, text: model.romaji)
                Spacer()
            }
            Spacer()
            HKText(textSize: .thirteen, text: "Katakana - Alphabet")
            Spacer()
        }
    }
}
