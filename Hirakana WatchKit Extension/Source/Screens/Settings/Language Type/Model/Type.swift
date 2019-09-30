import Foundation

struct Type: Codable, Identifiable, Equatable {
    let id: Int
    let name: String
    let category: Category
}

struct Category: Codable, Equatable {
    let currentIndex: Int
    let limit: Int?
    let timestamp: Date
}
