import SwiftUI

struct ChineseViews: View {
    let type = "chinese"
    let series = Series.A

    var body: some View {
        switch series {
            case .A:
                return AnyView(CharacterSA(pinyin: characterModel.pinyin,
                                           chineseCharacter: characterModel.chineseCharacter))
            case .B:
                return AnyView(CharacterSB(pinyin: characterModel.pinyin,
                                           chineseCharacter: characterModel.chineseCharacter,
                                           meaning: characterModel.meaning))
        }
    }

    let characterModel = CharacterModel(id: 0,
                                        pinyin: "wǒ",
                                        chineseCharacter: "我",
                                        meaning: "I; me; my",
                                        englishPhrase: "I run",
                                        chinesePhrasePinyin: "wǒ paǒ",
                                        chinesePhraseCharacters: "我 跑")
}

