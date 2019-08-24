import Foundation
import Combine

fileprivate let defaults = UserDefaults.standard

@propertyWrapper
struct HKUserDefaults<M: Codable> {
    var key: Keys
    var defaultValue: M

    var wrappedValue: M {
        get {
            return get()
        }
        set {
            update(newValue)
        }
    }

    func update<M: Codable> (_ value: M) {
        let encodedData = try? JSONEncoder().encode(value)
        defaults.set(encodedData, forKey: key.rawValue)
    }

    func get<M: Codable>() -> M {
        guard let data = defaults.value(forKey: key.rawValue) as? Data,
              let decodedData = try? JSONDecoder().decode(M.self, from: data)
            else { return defaultValue as! M }
        return decodedData
    }
}
