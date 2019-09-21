import Foundation

class MainStore {
    static let shared = MainStore()

    // Stores
    let settings = SettingsStore()

    private init() {}
}
