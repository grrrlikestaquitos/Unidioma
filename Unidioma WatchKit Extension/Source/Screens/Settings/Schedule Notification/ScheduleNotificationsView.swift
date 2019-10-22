import SwiftUI

struct ScheduleNotificationsView: View {
    let model: [TimeSchedule]
    let actions: SettingsStoreActions
    let isNotificationEnabled: Bool

    var body: some View {
        RenderViewCondition()
    }

    func RenderViewCondition() -> some View {
        if isNotificationEnabled {
            return AnyView(RenderNotificationEnabled())
        }
        return AnyView(RenderNotificationDisabled())
    }

    func RenderNotificationEnabled() -> some View {
        VStack(alignment: .leading) {
            RenderSelectedText()
            HStack {
                ForEach(model) { time in
                    ImageSelector(imageName: time.name, condition: time.isSelected) {
                        self.actions.timeScheduleSelected(id: time.id)
                    }
                }
            }.padding([.horizontal], 2)
            RenderMockNotification()
        }
    }

    func RenderNotificationDisabled() -> some View {
        HKText(textSize: .ten, text: "Notifications disabled")
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


    func RenderMockNotification() -> some View {
        #if DEBUG
            return Selector(text: "Mock Notification", condition: false) {
                self.actions.mockNotification()
            }
        #else
            return EmptyView
        #endif
    }
}
