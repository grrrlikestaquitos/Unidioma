import Foundation
import UserNotifications

struct HKNotifications {
    let center = UNUserNotificationCenter.current()

    func requestPermission() {
        center.requestAuthorization(options: [.alert, .sound]) { (success, error) in
        }
    }
}
