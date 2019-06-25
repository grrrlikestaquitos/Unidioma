//
//  SettingsView.swift
//  Hirakana WatchKit Extension
//
//  Created by Andrei Villasana on 6/24/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI
import Combine

enum SettingsPage: String {
    case Languages
}

struct SettingsView : View {
    var pagePressed = PassthroughSubject<SettingsPage, Never>()

    var body: some View {
        VStack {
            SettingsPage(.Languages)
            Spacer()
        }
    }

    private func SettingsPage(_ page: SettingsPage) -> some View {
        Button(action: {
            self.pagePressed.send(.Languages)
        }) {
            HStack {
                HKText(textType: .subtitle, text: page.rawValue)
                Spacer()
            }
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
