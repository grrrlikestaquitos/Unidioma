import SwiftUI

struct ImageSelector: View {
    let imageName: String
    let condition: Bool
    let onPress: () -> ()

    init(imageName: String, condition: Bool, _ onPress: @escaping () -> ()) {
        self.imageName = imageName
        self.condition = condition
        self.onPress = onPress
    }

    var borderColor: Color {
        if condition {
            return Color.green
        }
        return Color.gray
    }

    var opacity: Double {
        if condition {
            return 1
        }
        return 0.4
    }

    var body: some View {
        Button(action: { self.onPress() }) {
            Image(imageName)
                .renderingMode(.original)
                .opacity(opacity)
        }
        .clipShape(Circle())
        .overlay(Circle().stroke(borderColor, lineWidth: 1))
    }
}

struct ImageSelector_Previews: PreviewProvider {
    static var previews: some View {
        ImageSelector(imageName: "", condition: false) {

        }
    }
}
