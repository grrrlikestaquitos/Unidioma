import SwiftUI

struct ScheduleNotificationsView: View {
    let model: [TimeSchedule]
    let actions: SettingsStoreActions
    let notifications = HKNotifications()

    var body: some View {
        VStack(alignment: .leading) {
            RenderSelectedText()
            HStack {
                ForEach(model) { time in
                    ImageSelector(imageName: time.name, condition: time.isSelected) {
                        self.actions.timeScheduleSelected(id: time.id)
                        self.notifications.resetNotifications()
                        self.notifications.createNotifications()
                    }
                }
            }.padding([.horizontal], 2)
            RenderMockNotification()
        }
    }

    func RenderSelectedText() -> some View {
        var text = ""
        var selectedStrings: [String] = []

        for timeSchedule in model where timeSchedule.isSelected {
            selectedStrings.append(timeSchedule.name)
        }

        text = selectedStrings.joined(separator: ", ")

        return HKText(textSize: .ten, text: text, lines: 3)
    }

    #if DEBUG
    func RenderMockNotification() -> some View {
        Selector(text: "Mock Notification", condition: false) {
            self.notifications.scheduleMockNotification()
        }
    }
    #endif
}
