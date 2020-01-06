import Foundation

struct LanguageRoute<M: Codable>: Route {
    typealias Model = M

    var queryFormat: String?
    let languagePath: String
    var baseUrl: URLs.BaseURL { .develop }

    var urlPath: String {
        "/\(languagePath)"
    }

    func buildRouteUrl() -> URL {
        "\(baseUrl.rawValue)/\(urlPath)".asUrl()
    }
}
