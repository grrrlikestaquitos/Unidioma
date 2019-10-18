import Foundation

struct CharacterRoute<M: Codable>: Route {
    typealias Model = [M]

    let path: CharacterPath
    let id: Int
    var baseUrl: URLs.BaseURL { .production }
    var queryFormat: String { "/%@?id=%d" }

    var urlPath: String {
        return String(format: queryFormat, arguments: [path.rawValue, id])
    }

    func buildRouteUrl() -> URL {
        "\(baseUrl.rawValue)\(urlPath)".asUrl()
    }
}
