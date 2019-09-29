protocol SettingsStoreActions {
    func languageWasSelected(language: Languages)
    func update(language: Languages, category: String, model: LanguageModel)
}
