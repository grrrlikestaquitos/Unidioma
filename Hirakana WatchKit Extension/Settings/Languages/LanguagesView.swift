//
//  LanguagesView.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/24/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct LanguageState: Identifiable {
    var id: Int

    var language: String
    var state: Bool

    init(_ id: Int, _ language: String, _ state: Bool) {
        self.id = id
        self.language = language
        self.state = state
    }
}

struct LanguagesView : View {
    @State private var languages: [LanguageState] = [
        .init(0, "Japanese", false),
        .init(1, "Chinese", false)
    ]

    var body: some View {
        List {
            ForEach (languages.identified(by: \.id)) { item in
                Button(action: {
                    self.languages[item.id].state = !item.state
                }) {
                    HStack {
                        HKText(textType: .subtitle, text: item.language)
                        Spacer()

                        if item.state == true {
                            Image(systemName: "checkmark.circle")
                        }
                    }
                }
            }
        }
    }

//    var body: some View {
//        Button(action: {
//            self.name = "alex"
//        }) {
//            Text(name)
//        }
//    }
}

#if DEBUG
struct LanguagesView_Previews : PreviewProvider {
    static var previews: some View {
        LanguagesView()
    }
}
#endif
