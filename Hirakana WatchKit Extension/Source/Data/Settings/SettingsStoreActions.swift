protocol SettingsStoreActions {
    func languageWasSelected(language: Languages)
    func languageTypeWasSelected(language: Languages.RawValue, type: Type)
    func update(language: Languages, category: String, model: LanguageModel)
}
