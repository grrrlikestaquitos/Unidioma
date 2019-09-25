import SwiftUI

struct CharacterSA: View {
    let pinyin: String
    let chineseCharacter: String
    
    var body: some View {
        VStack {
            HKText(textType: .pinyinTitle, text: pinyin, color: .orange).pinyin
            HKText(textType: .characterBig, text: chineseCharacter)
        }
    }
}
