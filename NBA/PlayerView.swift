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
            
            Image(player.imageName)
                .clipShape(Circle())
                .background(Circle().foregroundColor(Color.white))
                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                .shadow(radius: 10)
                .offset(x: 0, y: -80)
                .padding(.bottom, -90)
            Text(player.name)
                .font(.system(size: 50))
                .bold()
            Stats(statName: "Age", statValue: String(player.age))
            Stats(statName: "Height", statValue: player.height)
            Stats(statName: "Weight", statValue: String(player.weight) + "lbs")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(player: players[0])
    }
}
