import SwiftUI

struct CharacterViewSB: View {
    let model: CharacterModel
    
    var body: some View {
        VStack {
            CharacterSB(pinyin: model.pinyin, chineseCharacter: model.chineseCharacter, meaning: model.meaning).offset(y: 10)
            Spacer()
            DescriptionSB(englishPhrase: model.englishPhrase, chinesePhrasePinyin: model.chinesePhrasePinyin, chinesePhraseCharacters: model.chinesePhraseCharacters).offset(y: 5)
        }
    }
}
