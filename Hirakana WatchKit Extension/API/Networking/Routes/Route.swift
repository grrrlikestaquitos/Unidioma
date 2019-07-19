import Foundation

protocol Route {
    var baseUrl: URLs.Base { get }
    var queryFormat: String { get }

    func buildRouteUrl() -> URL
}
