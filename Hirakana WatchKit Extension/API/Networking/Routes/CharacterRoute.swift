import Foundation

struct CharacterRangeRoute: Route {
    typealias Model = [KanjiModel]

    let route: (path: CharacterPath, from: Int, to: Int)

    var baseUrl: URLs.BaseURL { .develop }
    var queryFormat: String { "/%@?from=%d&to=%d" }

    var urlPath: String {
        let (routes, from, to) = route
        return String(format: queryFormat, arguments: [routes.rawValue, from, to])
    }

    func buildRouteUrl() -> URL {
        "\(baseUrl.rawValue)\(urlPath)".asUrl()
    }
}

extension CharacterRangeRoute {
    enum CharacterPath: String {
        case kanji, hiragana, katakana
    }
}
