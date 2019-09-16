import SwiftUI

struct ChineseViews: View {
    let type = "chinese"
    let series = Series.A

    var body: some View {
        switch series {
            case .A:
                return AnyView(CharacterSA(pinyin: characterModel.pinyin,
                                           character: characterModel.character))
            case .B:
                return AnyView(CharacterSB(pinyin: characterModel.pinyin,
                                           character: characterModel.character))
        }
    }

    let characterModel = CharacterModel(pinyin: "wǒ",
                                        character: "我",
                                        phraseCharacters: ["我","跑"],
                                        meaning: ["I; me; my"],
                                        pinyinForPhrase: ["wǒ","paǒ"],
                                        meaningForPhrase: "I run")
}

