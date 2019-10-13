import SwiftUI

struct TimeSchedule: Identifiable {
    let id: Int
    let name: String
    let time: Int
}

let schedules: [TimeSchedule] = [
    TimeSchedule(id: 0, name: "Morning", time: 7),
    TimeSchedule(id: 1, name: "Noon", time: 13),
    TimeSchedule(id: 2, name: "Evening", time: 17),
    TimeSchedule(id: 3, name: "Night", time: 21)
]

struct ScheduleNotificationsView: View {
    var body: some View {
        HStack {
            ForEach(schedules) { time in
                ImageSelector(imageName: time.name,
                              condition: false) {

                }
            }
        }
        .padding([.horizontal], 2)
    }
}
