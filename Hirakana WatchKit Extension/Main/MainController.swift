import WatchKit
import SwiftUI

final class MainController : WKHostingController<HirakanaView> {
    let settingsStore = MainStore.shared.settings

    var model: LanguageModel? {
        return settingsStore.languages.value.first { language -> Bool in
            return language.isEnabled == true
        }
    }

    override func willActivate() {
        super.willActivate()
        setTitle(model?.language)
    }

    
    override var body: HirakanaView {
        switch model?.language {
            case Language.Japanese.rawValue:
                return HirakanaView(viewType: .kanji(Series.B))
            case Language.Chinese.rawValue:
                return HirakanaView(viewType: .character(Series.B))
            default:
                return HirakanaView(viewType: .kanji(Series.B))
        }
    }
}
