import Foundation

extension Date {
    static func getCharacterResetDate() -> Date {
        let calendar = Calendar.current
        let todayDate = Date()
        
        guard var resetDate = calendar.date(bySetting: .hour, value: 5, of: todayDate) else {
            return todayDate
        }

        let timeDifference = todayDate.timeIntervalSince(resetDate)

        if timeDifference < 0 {
            // Reset date did not occur on current day, but next,
            // therefore rewind the clock by 24 hours
            let secondsInADay = 86400.0
            resetDate.addTimeInterval(-secondsInADay)
        }
        return resetDate
    }
}
