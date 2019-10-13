import SwiftUI

struct Selector: View {
    let text: String
    let condition: Bool
    let onPress: () -> ()

    init(text: String, condition: Bool, _ onPress: @escaping () -> ()) {
        self.text = text
        self.condition = condition
        self.onPress = onPress
    }

    var borderColor: Color {
        if condition {
            return Color.green
        }
        return Color.gray
    }

    var body: some View {
        Button(action: { self.onPress() }) {
            HKText(textSize: .thirteen, text: text)
        }.border(borderColor, width: 2)
        .cornerRadius(4)
    }
}
