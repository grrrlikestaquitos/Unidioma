//
//  LanguagesView.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/24/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct LanguagesView : View {
    @State private var languages: [LanguageState] = [
        .init(0, "Japanese", false),
        .init(1, "Chinese", false)
    ]

    private func languageSelector(item: LanguageState) ->some View {
        Button(action: { self.languages[item.id].state = !item.state }) {
            HStack {
                HKText(textType: .subtitle, text: item.language)
                    .padding([.leading], 5)
                Spacer()

                if item.state == true {
                    Image(systemName: "checkmark.circle")
                        .padding([.trailing], 5)
                }
            }
        }
    }

    var body: some View {
        List(languages.identified(by: \.id)) { item in
            self.languageSelector(item: item)
        }
    }
}

#if DEBUG
struct LanguagesView_Previews : PreviewProvider {
    static var previews: some View {
        LanguagesView()
    }
}
#endif
