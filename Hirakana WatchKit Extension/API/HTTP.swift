import Foundation

fileprivate let session = URLSession.shared
fileprivate let baseURL = "http://localhost:7555"

typealias closure = (Response) -> ()

enum Response {
    case success(Codable)
    case failure(Error)
}

struct HTTP {
    private let decoder = JSONDecoder()

    public func request<M: Codable> (endpoint: Endpoint, model: M.Type, completed: @escaping closure) {
        let endpointURL = EndpointBuilder().build(endpoint: endpoint)
        guard let url = URL(string: baseURL + endpointURL) else { return }

        session.dataTask(with: url) { (data, responseInfo, error) in
            if let data = data {
                do {
                    let model: M = try self.parseJSON(data: data)
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
}

extension HTTP {
    private func parseJSON<M: Codable>(data: Data) throws -> M {
        return try decoder.decode(M.self, from: data)
    }
}
