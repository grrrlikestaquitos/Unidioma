import Foundation
import UserNotifications

struct HKNotifications {
    private let center = UNUserNotificationCenter.current()

    func requestPermission(didComplete: (() -> ())? = nil) {
        center.requestAuthorization(options: [.alert, .sound]) { (success, error) in
            if success {
                didComplete?()
            }
        }
    }

    func getNotificationPermissionStatus(isEnabled: @escaping (Bool) -> Void) {
        center.getNotificationSettings { notificationSetting in
            switch notificationSetting.authorizationStatus {
                case .authorized:
                    isEnabled(true)
                default:
                    isEnabled(false)
            }
        }
    }

    func createNotifications(timeSchedules: [TimeSchedule]) {
        let content = UNMutableNotificationContent()
        content.title = "Word of the day!"
        content.body = "New word of the day!\nTap to learn more"
        content.sound = .default

        for schedule in timeSchedules where schedule.isSelected {
            let dateComponents = DateComponents(hour: schedule.time)
            let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
            let request = UNNotificationRequest(identifier: "\(schedule.name)_notification", content: content, trigger: trigger)

            center.add(request)
        }
    }

    func resetNotifications() {
        center.removeAllPendingNotificationRequests()
    }
}

extension HKNotifications {
    #if DEBUG
    func scheduleMockNotification() {
        let content = UNMutableNotificationContent()
        content.title = "Word of the day!"
        content.body = "New word of the day!\n Tap to learn more"
        content.sound = .default

        let timeInterval = Date().timeIntervalSinceNow + 10.0
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: timeInterval, repeats: false)
        let request = UNNotificationRequest(identifier: "mock_notification", content: content, trigger: trigger)

        center.add(request)
    }
    #endif
}
