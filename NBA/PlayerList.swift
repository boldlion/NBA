//
//  PlayerList.swift
//  NBA
//
//  Created by Bold Lion on 8.09.19.
//  Copyright © 2019 Bold Lion. All rights reserved.
//

import SwiftUI

struct PlayerList: View {
    
    var body: some View {
        
        NavigationView {
            
            List(players) {
                player in
                NavigationLink(destination: PlayerView(player: player)) {
                    PlayerRow(player: player)
                }
                
            }.navigationBarTitle(Text("NBA Finals Players"), displayMode: .large)
        }
    }
}

struct PlayerList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PlayerList()
                .previewDevice("iPhone SE")
                .environment(\.sizeCategory, .extraSmall)
                .previewDisplayName("SE")
            
            PlayerList()
                .previewDevice("iPhone XS Max")
                .environment(\.sizeCategory, .extraSmall)
                .previewDisplayName("XS Max - Small Text")
            
            PlayerList()
                .previewDevice("iPhone XS Max")
                .environment(\.sizeCategory, .extraLarge)
                .previewDisplayName("XS Max - Extra Large Text")
        }
    }
}
