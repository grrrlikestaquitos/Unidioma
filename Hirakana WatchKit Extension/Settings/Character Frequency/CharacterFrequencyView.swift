import SwiftUI

struct CharacterFrequencyView: View {
    @ObjectBinding var dataStore: SettingsDataStore

    var body: some View {
        List {
            SelectionItem("Once per day", count: 1)
            SelectionItem("Twice per day", count: 2)
            SelectionItem("Three times per day", count: 3)
        }
    }

    private func SelectionItem(_ text: String, count: Int) -> some View {
        Button(action: {
            self.dataStore.charFrequencyWasSelected(count)
        }) {
            HStack {
                HKText(textType: .subtitle, text: text)
                Spacer()
                
                if self.dataStore.charFrequencyModel.charsPerDay == count {
                    Image(systemName: "checkmark.circle")
                }
            }
        }
    }
}

//#if DEBUG
//struct CharacterFrequencyView_Previews : PreviewProvider {
//    static var previews: some View {
//        CharacterFrequencyView()
//    }
//}
//#endif
