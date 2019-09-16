import WatchKit
import SwiftUI

final class MainController: WKHostingController<HirakanaView> {
    let view = HirakanaView()

    override func willActivate() {
        super.willActivate()
        setTitle(view.languageSelected.rawValue)
    }
    
    override var body: HirakanaView {
        return view
    }
}
