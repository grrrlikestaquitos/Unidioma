struct TimeSchedule: Codable, Identifiable {
    let id: Int
    let name: String
    let time: Int
    let isSelected: Bool
}
