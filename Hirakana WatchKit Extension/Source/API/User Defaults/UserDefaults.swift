import Foundation

fileprivate let defaults = UserDefaults.standard

struct HKUserDefaults<M: Codable> {
    var key: Keys
    var defaultValue: M

    var value: M {
        get {
            return get()
        }
        set {
            update(newValue)
        }
    }

    private func update<M: Codable> (_ value: M) {
        let encodedData = try? JSONEncoder().encode(value)
        defaults.set(encodedData, forKey: key.rawValue)
    }

    private func get<M: Codable>() -> M {
        guard let data = defaults.value(forKey: key.rawValue) as? Data,
              let decodedData = try? JSONDecoder().decode(M.self, from: data)
            else { return defaultValue as! M }
        return decodedData
    }
}
