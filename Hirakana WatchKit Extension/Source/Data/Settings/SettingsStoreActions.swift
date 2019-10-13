protocol SettingsStoreActions {
    func languageWasSelected(language: Languages)
    func languageTypeWasSelected(language: Languages.RawValue, type: Type)
    func timeScheduleSelected(id: Int)
}
