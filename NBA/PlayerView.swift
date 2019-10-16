//
//  ContentView.swift
//  NBA
//
//  Created by Bold Lion on 8.09.19.
//  Copyright © 2019 Bold Lion. All rights reserved.
//

import SwiftUI

struct PlayerView: View {
    
    var player: Player
    
    var body: some View {
        
        VStack {
            
            Image(player.team.imageName)
                .resizable()
                .frame(height: 250)
                .scaledToFit()

            Image(player.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .background(Circle().foregroundColor(Color.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .offset(x: 0, y: -80)
                .padding(.bottom, -90)
                .frame(minWidth: 100, alignment: .center)
            
            
            Text(player.name)
                .font(.system(size: 50))
                .fontWeight(.bold)
                .minimumScaleFactor(0.5)
                .padding(.horizontal)
            
            Stats(statName: "Age", statValue: String(player.age))
            Stats(statName: "Height", statValue: player.height)
            Stats(statName: "Weight", statValue: String(player.weight) + "lbs")
            
            Spacer()
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        Group {
            
            PlayerView(player: players[0])
                .previewDevice("iPhone SE")
                .previewDisplayName("iPhone SE - Extra Small")
                .environment(\.sizeCategory, .extraSmall)
            
            PlayerView(player: players[0])
                .previewDevice("iPhone SE")
                .previewDisplayName("iPhone SE - Extra Large")
                .environment(\.sizeCategory, .extraLarge)
            
            PlayerView(player: players[0])
                .previewDevice("iPhone XS MAX")
                .previewDisplayName("XS Max")
                .environment(\.sizeCategory, .extraExtraLarge)
        }
    }
}
