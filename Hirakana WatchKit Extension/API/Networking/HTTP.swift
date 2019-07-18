import Foundation

fileprivate let session = URLSession.shared
fileprivate let baseURL = "http://localhost:7555"

enum Response {
    case success(Codable)
    case failure(Error)
}

struct HTTP {
    typealias response = (Response) -> ()

    private let decoder = JSONDecoder()

    public func request<M: Codable> (route: BaseRoute, model: M.Type, completed: @escaping response) {
        guard let url = URL(string: baseURL + route.buildRouteUrl()) else { return }

        session.dataTask(with: url) { (data, responseInfo, error) in
            if let data = data {
                do {
                    let model: M = try self.serializeJSON(data: data)
                    completed(.success(model))
                } catch (let parseError) {
                    completed(.failure(parseError))
                }
            }
            if let error = error {
                completed(.failure(error))
            }
        }.resume()
    }

    private func serializeJSON<M: Codable>(data: Data) throws -> M {
        return try decoder.decode(M.self, from: data)
    }
}
