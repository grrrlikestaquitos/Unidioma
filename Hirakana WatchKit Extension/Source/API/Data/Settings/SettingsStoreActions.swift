protocol SettingsStoreActions {
    func languageWasSelected(language: SupportedLanguages)
    func update(language: SupportedLanguages, category: String, model: LanguageModel.Category)
}
