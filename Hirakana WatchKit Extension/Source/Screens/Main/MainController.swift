import WatchKit
import SwiftUI

final class MainController: WKHostingController<HirakanaView> {
    let settingsStore = AppState.shared.settings

    var language: SupportedLanguages {
        return SupportedLanguages(rawValue: settingsStore.language.value)
    }

    var model: BaseModel {
        return KanjiModel(id: 0,
                          character: "私",
                          furigana: "わたし",
                          romaji: "wa-ta-shi",
                          meaning: "I; Me",
                          englishPhrase: "I fell",
                          japanesePhrase: "私は落ちた",
                          romajiPhrase: "Watashi wa ochita")
    }

    override func willActivate() {
        super.willActivate()
        setTitle(settingsStore.language.value)
    }
    
    override var body: HirakanaView {
        return HirakanaView(model: model, language: language)
    }
}
