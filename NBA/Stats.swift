//
//  Stats.swift
//  NBA
//
//  Created by Bold Lion on 8.09.19.
//  Copyright © 2019 Bold Lion. All rights reserved.
//

import SwiftUI

struct Stats: View {
    
    var statName: String
    var statValue: String
    
    var body: some View {
        HStack {
            Text(statName + ":")
                .font(.system(size: 35))
                .fontWeight(.bold)
            Text(statValue)
                .font(.system(size: 35))
                .fontWeight(.light)
            Spacer()
        }.padding()
    }
}

struct Stats_Previews: PreviewProvider {
    static var previews: some View {
        Stats(statName: "Age", statValue: "40")
    }
}
