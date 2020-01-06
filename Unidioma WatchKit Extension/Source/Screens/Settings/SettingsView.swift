import SwiftUI

private enum SettingsPage: String {
    case language = "Language"
    case type = "Type"
    case scheduleNotification = "Schedule Notification"
}

struct SettingsView: View {
    @ObservedObject var settingStore = AppState.shared.settings

    var language: Languages.RawValue {
        return settingStore.language.value
    }

    var schedule: [TimeSchedule] {
        return settingStore.notificationSchedule.value
    }

    var body: some View {
        ScrollView {
            Section(SettingsPage.language.rawValue) {
                LanguageView(language: language, actions: settingStore.self)
            }
            Section(SettingsPage.scheduleNotification.rawValue) {
                ScheduleNotificationsView(model: schedule,
                                          actions: settingStore.self,
                                          isNotificationEnabled: settingStore.notificationsEnabled)
            }
            EmptyView.padding(25)
        }
    }
}

#if DEBUG
struct SettingsView_Previews : PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
#endif
