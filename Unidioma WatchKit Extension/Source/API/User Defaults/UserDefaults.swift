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
        do {
            let encodedData = try JSONEncoder().encode(value)
            defaults.set(encodedData, forKey: key.rawValue)
        } catch {
            print("Error while encoding \(error)")
        }
    }

    private func get<M: Codable>() -> M {
        if let data = defaults.value(forKey: key.rawValue) as? Data {
            do {
                let decodedData = try JSONDecoder().decode(M.self, from: data)
                return decodedData
            } catch {
                print("Error while decoding \(error)")
            }
        }
        
        return defaultValue as! M
    }
}
