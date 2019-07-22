import Combine
import UIKit

class MainStore {
    let settings = SettingsStore()

    enum Stores {
        case settings
    }
}

let mainStore = MainStore()

