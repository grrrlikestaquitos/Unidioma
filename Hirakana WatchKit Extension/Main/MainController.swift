import WatchKit
import SwiftUI

final class MainController : WKHostingController<HirakanaView> {
    @ObservedObject var settingsStore = MainStore.shared.settings

    var model: LanguageModel? {
        return settingsStore.languages.value.first { language -> Bool in
            return language.isEnabled == true
        }
    }

    override func willActivate() {
        super.willActivate()
        setTitle(model?.language)
        setNeedsBodyUpdate()
    }

    
    override var body: HirakanaView {
        switch model?.language {
            case Language.Japanese.rawValue:
                return HirakanaView(viewType: .kanji(Series.A))
            case Language.Chinese.rawValue:
                return HirakanaView(viewType: .character(Series.B))
            default:
                return HirakanaView(viewType: .kanji(Series.B))
        }
    }
}
