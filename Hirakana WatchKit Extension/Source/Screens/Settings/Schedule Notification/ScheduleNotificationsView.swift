import SwiftUI

struct ScheduleNotificationsView: View {
    let model: [TimeSchedule]
    let actions: SettingsStoreActions

    var body: some View {
        HStack {
            ForEach(model) { time in
                ImageSelector(imageName: time.name, condition: time.isSelected) {
                    self.actions.timeScheduleSelected(id: time.id)
                }
            }
        }
        .padding([.horizontal], 2)
    }
}
