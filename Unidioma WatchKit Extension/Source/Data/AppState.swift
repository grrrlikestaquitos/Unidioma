import Foundation

class AppState {
    static let shared = AppState()

    // Stores
    let main = MainStore()
    let settings = SettingsStore()

    private init() {}
}
