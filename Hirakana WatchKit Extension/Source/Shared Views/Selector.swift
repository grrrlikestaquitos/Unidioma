import SwiftUI

struct Selector: View {
    let onPress: () -> ()
    let text: String
    let condition: Bool

    var borderColor: Color {
        if condition {
            return Color.green
        }
        return Color.gray
    }

    var body: some View {
        Button(action: { self.onPress() }) {
            HKText(textType: .subtitle, text: text)
//                .padding([.leading], 5)
        }.border(borderColor, width: 2)
        .cornerRadius(4)
    }
}
