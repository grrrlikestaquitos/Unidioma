import Foundation

struct Type: Codable, Identifiable {
    let id: Int
    let name: String
    var currentIndex: Int
    let limit: Int?
    var timestamp: Date
}


