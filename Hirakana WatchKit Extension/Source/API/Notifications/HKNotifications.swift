import Foundation
import UserNotifications

struct HKNotifications {
    private let center = UNUserNotificationCenter.current()
    private let settings = AppState.shared.settings

    func requestPermission() {
        center.requestAuthorization(options: [.alert, .sound]) { (success, error) in
        }
    }

    func createNotifications() {
        let timeSchedules = settings.notificationSchedule.value

        let content = UNMutableNotificationContent()
        content.title = "Word of the day!"
        content.body = "New word of the day!\n Tap to learn more"
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
