import Foundation

fileprivate let defaults = UserDefaults.standard

@propertyWrapper
struct SettingsUserDefaults<M: Codable> {
    var key: Key
    var defaultValue: M

    var value: M {
        get {
            return getSetting(key)
        }
        set {
            updateSetting(key, newValue)
        }
    }

    func updateSetting<M: Codable> (_ key: Key, _ value: M) {
        let encodedData = try? JSONEncoder().encode(value)
        defaults.set(encodedData, forKey: key.rawValue)
    }

    func getSetting<M: Codable>(_ key: Key) -> M {
        guard let data = defaults.value(forKey: key.rawValue) as? Data,
              let decodedData = try? JSONDecoder().decode(M.self, from: data)
            else { return defaultValue as! M }
        return decodedData
    }

}
