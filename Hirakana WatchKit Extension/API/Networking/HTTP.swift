import Foundation

enum Response {
    case success(Codable)
    case failure(Error)
}

struct HTTP {
    typealias ResponseCompletion = (Response) -> ()

    private let decoder = JSONDecoder()
    private let session = URLSession.shared
    let endpoint: Route

    public func request<M: Codable>(model: M, completed: @escaping ResponseCompletion) {
        session.dataTask(with: endpoint.buildRouteUrl()) { (data, responseInfo, error) in
            if let data = data {
                do {
                    let model: M = try self.serializeJSON(data: data)
                    completed(.success(model))
                } catch (let serializationError) {
                    completed(.failure(serializationError))
                }
            }
            if let error = error {
                completed(.failure(error))
            }
        }.resume()
    }

    private func serializeJSON<M: Codable> (data: Data) throws -> M {
        return try decoder.decode(M.self, from: data)
    }
}
