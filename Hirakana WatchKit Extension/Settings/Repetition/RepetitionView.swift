import SwiftUI

struct RepetitionView: View {
    var body: some View {
        List {
            SelectionItem("Once per day", count: 1)
            SelectionItem("Twice per day", count: 2)
            SelectionItem("Three time per day", count: 3)
        }
    }

    private func SelectionItem(_ text: String, count: Int) -> some View {
        Button(action: { }) {
            HKText(textType: .subtitle, text: text)
        }
    }
}

//#if DEBUG
//struct RepetitionView_Previews : PreviewProvider {
//    static var previews: some View {
//        RepetitionView()
//    }
//}
//#endif
