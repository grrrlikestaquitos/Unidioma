import SwiftUI

struct LanguageType: View {
    let language: Languages.RawValue
    let model: LanguageModel
    let actions: SettingsStoreActions

    func isTypeSelected(_ type: Type) -> Bool {
        return model.selectedType.name == type.name
    }
    
    var body: some View {
        ForEach(model.types) { type in
            Selector(text: type.name, condition: self.isTypeSelected(type)) {
                self.actions.languageTypeWasSelected(language: self.language, type: type)
            }
        }
    }
}
