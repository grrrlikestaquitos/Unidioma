import Foundation

class AppState {
    static let shared = AppState()

    // Stores
    let settings = SettingsStore()

    private init() {}
}
