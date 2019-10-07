import Foundation

extension Date {
    static func getHirakanaResetDate() -> Date {
        let calendar = Calendar.current
        let todayDate = Date()
        guard let resetDate = calendar.date(bySetting: .hour, value: 5, of: todayDate) else {
            return todayDate
        }
        return resetDate
    }
}
