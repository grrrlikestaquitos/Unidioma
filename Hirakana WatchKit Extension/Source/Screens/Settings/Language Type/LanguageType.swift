import SwiftUI

struct Type: Codable, Identifiable {
    let id: Int
    let name: String
}

struct LanguageType: View {
    var types: [Type]
    
    var body: some View {
        ForEach(types) { type in
            Selector(text: type.name, condition: true) {

            }
        }
    }
}
