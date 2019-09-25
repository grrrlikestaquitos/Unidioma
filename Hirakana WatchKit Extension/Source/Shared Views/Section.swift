import SwiftUI

struct Section<P: View>: View {
    private let view: P
    private let text: String

    init(_ text: String, _ view: () -> (P)) {
        self.view = view()
        self.text = text
    }

    var body: some View {
        VStack {
            HStack {
                HKText(textType: .title, text: text, color: .gray)
                    .padding([.top, .bottom], 5)
                Spacer()
            }
            self.view
        }
    }
}
