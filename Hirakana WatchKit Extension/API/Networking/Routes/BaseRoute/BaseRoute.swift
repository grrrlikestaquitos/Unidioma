protocol BaseRoute {
    var queryFormat: String { get }

    func buildRouteUrl() -> String
}
