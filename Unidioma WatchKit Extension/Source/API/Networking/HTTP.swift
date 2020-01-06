import Foundation

struct DataResponse<M: Codable>: Codable {
    let data: M
}

struct HTTP<Endpoint: Route> {
    private let decoder = JSONDecoder()
    private let session = URLSession.shared
    var endpoint: Endpoint?

    public func request(success: ((Endpoint.Model) -> Void)? = nil,
                        failure: ((Error) -> Void)? = nil) {
        guard let endpoint = endpoint else { return }
        
        session.dataTask(with: endpoint.buildRouteUrl()) { (data, responseInfo, error) in
            if let data = data {
                do {
                    let model: DataResponse<Endpoint.Model> = try self.serializeJSON(data: data)
                    success?(model.data)
                } catch (let serializationError) {
                    failure?(serializationError)
                }
            }

            if let error = error {
                failure?(error)
            }
        }.resume()
    }

    private func serializeJSON(data: Data) throws -> DataResponse<Endpoint.Model> {
        return try decoder.decode(DataResponse<Endpoint.Model>.self, from: data)
    }
}
