import Foundation

protocol Route {
    associatedtype Model: Codable

    var baseUrl: URLs.BaseURL { get }
    var queryFormat: String? { get }
    var urlPath: String { get }

    func buildRouteUrl() -> URL
}
