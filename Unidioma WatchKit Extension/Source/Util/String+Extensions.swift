import Foundation

extension String {
    func asUrl() -> URL {
        return URL(string: self)!
    }
}
