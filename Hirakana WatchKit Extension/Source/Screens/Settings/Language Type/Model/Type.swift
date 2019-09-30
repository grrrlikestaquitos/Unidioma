import Foundation

struct Type: Codable, Identifiable {
    let id: Int
    let name: String
    let currentIndex: Int
    let limit: Int?
    let timestamp: Date
}


