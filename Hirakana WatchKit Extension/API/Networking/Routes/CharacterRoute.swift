import Foundation

struct CharacterRoute: Route {
    let route: RouteQuery

    var baseUrl: URLs.Base {
        return .develop
    }
    
    var queryFormat: String {
        switch route {
            case .range:
                return QueryFormat.range.rawValue
            case .all:
                return QueryFormat.all.rawValue
        }
    }

    func buildRouteUrl() -> URL {
        switch route {
            case .range(let route, let range):
                let (from, to) = range
                return String(format: queryFormat, arguments: [route.rawValue, from, to]).asUrl()
            case .all(let route):
                return String(format: queryFormat, arguments: [route.rawValue]).asUrl()
        }
    }
}

extension CharacterRoute {
    enum Routes: String {
        case kanji, hiragana, katakana
    }

    enum RouteQuery {
        case range(Routes, ((from: Int, to: Int)))
        case all(Routes)
    }

    private enum QueryFormat: String {
        case range = "/%@?from=%d&to=%d"
        case all = "/%@/all"
    }
}
