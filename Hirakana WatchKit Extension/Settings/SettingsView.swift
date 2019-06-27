//
//  SettingsView.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/24/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI
import Combine

private enum SettingsPage: String {
    case Languages
}

struct SettingsView : View {
    @ObjectBinding var dataStore: SettingsDataStore

    var body: some View {
        VStack {
            SettingsPage(.Languages)
            Spacer()
        }
    }

    private func SettingsPage(_ page: SettingsPage) -> some View {
        NavigationButton(destination: getSettingDestination(page)) {
            HStack {
                HKText(textType: .title, text: page.rawValue)
                    .padding([.leading], 5)
                Spacer()
            }
        }
    }

    private func getSettingDestination(_ page: SettingsPage) -> some View {
        switch page {
        case .Languages:
            return LanguageView(dataStore: dataStore)
        }
    }
}

//#if DEBUG
//struct SettingsView_Previews : PreviewProvider {
//    static var previews: some View {
//        SettingsView()
//    }
//}
//#endif
