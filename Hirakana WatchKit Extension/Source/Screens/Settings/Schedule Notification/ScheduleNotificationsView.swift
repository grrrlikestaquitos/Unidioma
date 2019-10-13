import SwiftUI

struct ScheduleNotificationsView: View {
    let model: [TimeSchedule]

    var body: some View {
        HStack {
            ForEach(model) { time in
                ImageSelector(imageName: time.name,
                              condition: time.isSelected) {

                }
            }
        }
        .padding([.horizontal], 2)
    }
}
