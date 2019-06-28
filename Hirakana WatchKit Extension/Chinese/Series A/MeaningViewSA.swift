//
//  CharacterMeaningSA.swift
//  Hirakana WatchKit Extension
//
//  Created by Katherine Li on 6/25/19.
//  Copyright © 2019 Andrei Villasana. All rights reserved.
//

import SwiftUI

private enum Headers: String {
    case Meaning
}

struct MeaningViewSA: View {
    var meanings: [String]
    
    var body: some View {
        VStack {
            HKText(textType: .title, text: Headers.Meaning.rawValue, color: .blue)
            HKText(textType: .subtitle, text: meanings[0])
        }
    }
}

#if DEBUG
struct MeaningViewSA_Previews: PreviewProvider {
    static var previews: some View {
        MeaningViewSA(meanings: ["I; me; my"])
    }
}
#endif
