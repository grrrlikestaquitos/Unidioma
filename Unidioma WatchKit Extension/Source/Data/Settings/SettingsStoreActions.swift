protocol SettingsStoreActions {
    func languageWasSelected(language: Languages)
    func timeScheduleSelected(id: Int)
    func getNotificationStatus()
    func mockNotification()
}
