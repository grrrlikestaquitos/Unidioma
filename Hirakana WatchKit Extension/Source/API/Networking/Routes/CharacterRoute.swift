import Foundation

struct CharacterRoute<M: Codable>: Route {
    typealias Model = [M]

    let route: (path: CharacterPath, id: Int)
    var baseUrl: URLs.BaseURL { .production }
    var queryFormat: String { "/%@?id=%d" }

    var urlPath: String {
        let (path, id) = route
        return String(format: queryFormat, arguments: [path.rawValue, id])
    }

    func buildRouteUrl() -> URL {
        "\(baseUrl.rawValue)\(urlPath)".asUrl()
    }
}

extension CharacterRoute {
    enum CharacterPath: String {
        case kanji, hiragana, katakana
    }
}

