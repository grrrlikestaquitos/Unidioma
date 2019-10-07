import Foundation

extension TimeInterval {
    var minutes: TimeInterval {
        return self / 60
    }

    var hours: TimeInterval {
        return minutes / 60
    }

    var days: TimeInterval {
        return hours / 24
    }

    func didExpireAfter(minutes: Double) throws -> Bool {
        if minutes > 60 {
            throw ErrorMessage(message: "Argument minutes shouldn't be greater than 60")
        }

        return self.minutes > minutes
    }

    func didExpireAfter(hours: Double) throws -> Bool {
        if hours > 24 {
            throw ErrorMessage(message: "Argument hours shouldn't be greather than 24")
        }

        return self.hours > hours
    }
}


