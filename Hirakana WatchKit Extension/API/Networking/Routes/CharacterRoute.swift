struct CharacterRoute: BaseRoute {
    let route: RouteQuery

    var queryFormat: String {
        switch route {
            case .range:
                return QueryFormat.range.rawValue
            case .all:
                return QueryFormat.all.rawValue
        }
    }

    func buildRouteUrl() -> String {
        switch route {
            case .range(let route, let range):
                let (from, to) = range
                return String(format: queryFormat, arguments: [route.rawValue, from, to])
            case .all(let route):
                return String(format: queryFormat, route.rawValue)
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
