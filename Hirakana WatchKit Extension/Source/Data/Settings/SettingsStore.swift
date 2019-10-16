import SwiftUI
import Combine

final class SettingsStore: ObservableObject {
    private let appNotifications = HKNotifications()

    @Published var language = HKUserDefaults(key: .languageSelected,
                                             defaultValue: defaultLanguage)

    @Published var languageConfig = HKUserDefaults(key: .languageConfig,
                                                   defaultValue: defaultLanguageConfig)

    @Published var notificationSchedule = HKUserDefaults(key: .notificationSchedule,
                                                          defaultValue: defaultNotificationSchedule)

    @Published var notificationsEnabled: Bool = false
}

extension SettingsStore: SettingsStoreActions {
    func languageWasSelected(language: Languages) {
        self.language.value = language.rawValue
    }

    func languageTypeWasSelected(language: Languages.RawValue, type: Type) {
        var modifiedConfig = self.languageConfig.value
        modifiedConfig[language]?.selectedType = type

        self.languageConfig.value = modifiedConfig
    }

    func timeScheduleSelected(id: Int) {
        var modifiedSchedule = self.notificationSchedule.value
        modifiedSchedule[id].isSelected.toggle()

        self.notificationSchedule.value = modifiedSchedule
        appNotifications.resetNotifications()
        appNotifications.createNotifications(timeSchedules: modifiedSchedule)
    }

    func getNotificationStatus() {
        appNotifications.getNotificationPermissionStatus { enabled in
            DispatchQueue.main.async {
                self.notificationsEnabled = enabled
            }
        }
    }

    func mockNotification() {
        appNotifications.scheduleMockNotification()
    }
}

private extension SettingsStore {
    static let defaultLanguageConfig: [Languages.RawValue: LanguageModel] = [
        Languages.Japanese.rawValue: LanguageModel(
            selectedType: 0,
            types: [Type(id: 0,
                         name: LanguageTypes.Hiragana.rawValue,
                         currentIndex: 43,
                         limit: 45,
                         timestamp: Date.getHirakanaResetDate()),
                    Type(id: 1,
                         name: LanguageTypes.Katakana.rawValue,
                         currentIndex: 0,
                         limit: 45,
                         timestamp: Date.getHirakanaResetDate()),
                    Type(id: 2,
                         name: LanguageTypes.Kanji.rawValue,
                         currentIndex: 0,
                         limit: nil,
                         timestamp: Date.getHirakanaResetDate()),
            ]
        ),
        Languages.Chinese.rawValue: LanguageModel(
            selectedType: 0,
            types: [Type(id: 0,
                         name: LanguageTypes.Pinyin.rawValue,
                         currentIndex: 0,
                         limit: nil,
                         timestamp: Date())]
        )
    ]

    static let defaultLanguage: Languages.RawValue = Languages.Japanese.rawValue

    static let defaultNotificationSchedule: [TimeSchedule] = [
        TimeSchedule(id: 0, name: "Morning", time: 7, isSelected: false),
        TimeSchedule(id: 1, name: "Noon", time: 13, isSelected: true),
        TimeSchedule(id: 2, name: "Evening", time: 17, isSelected: true),
        TimeSchedule(id: 3, name: "Night", time: 21, isSelected: false)
    ]
}
