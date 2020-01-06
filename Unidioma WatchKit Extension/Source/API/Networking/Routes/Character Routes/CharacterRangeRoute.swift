import Foundation

struct CharacterRangeRoute<M: Codable>: Route {
    typealias Model = [M]

    let route: (path: CharacterPath, from: Int, to: Int)
    var baseUrl: URLs.BaseURL { .production }
    var queryFormat: String? { "/%@/range?from=%d&to=%d" }

    var urlPath: String {
        let (routes, from, to) = route
        guard let queryFormat = queryFormat else { return "" }
        return String(format: queryFormat, arguments: [routes.rawValue, from, to])
    }

    func buildRouteUrl() -> URL {
        "\(baseUrl.rawValue)\(urlPath)".asUrl()
    }
}
