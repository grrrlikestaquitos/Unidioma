//
//  LanguagesView.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/24/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

struct LanguageView : View {
    @ObjectBinding var dataStore: SettingsDataStore

    private func languageSelector(item: LanguageModel) -> some View {
        Button(action: {
            self.dataStore.languageModel[item.id].isEnabled = !item.isEnabled
        }) {
            HStack {
                HKText(textType: .subtitle, text: item.language)
                    .padding([.leading], 5)
                Spacer()

                if item.isEnabled == true {
                    Image(systemName: "checkmark.circle")
                        .padding([.trailing], 5)
                }
            }
        }
    }

    var body: some View {
        List(self.dataStore.languageModel.identified(by: \.id)) { item in
            self.languageSelector(item: item)
        }
    }
}

//#if DEBUG
//struct LanguagesView_Previews : PreviewProvider {
//    static var previews: some View {
//        LanguageView()
//    }
//}
//#endif
