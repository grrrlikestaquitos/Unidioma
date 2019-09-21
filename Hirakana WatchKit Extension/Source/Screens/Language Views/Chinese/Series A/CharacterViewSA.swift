import SwiftUI

struct CharacterViewSA: View {
    var model: CharacterModel
    
    var body: some View {
        HStack {
            CharacterSA(pinyin: model.pinyin, chineseCharacter: model.chineseCharacter).offset(x: -10, y: 10)
            DescriptionSA(meaning: model.meaning, englishPhrase: model.englishPhrase, chinesePhrasePinyin: model.chinesePhrasePinyin, chinesePhraseCharacters: model.chinesePhraseCharacters).offset(x: 5)
        }
    }
}
