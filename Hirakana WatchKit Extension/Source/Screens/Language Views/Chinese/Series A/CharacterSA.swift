import SwiftUI

struct CharacterSA: View {
    let pinyin: String
    let chineseCharacter: String
    
    var body: some View {
        VStack {
            HKText(textSize: .twentyFive, text: pinyin, color: .orange).pinyin
            HKText(textSize: .sixtyFive, text: chineseCharacter)
        }
    }
}
