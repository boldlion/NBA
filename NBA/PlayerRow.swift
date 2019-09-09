//
//  PlayerRow.swift
//  NBA
//
//  Created by Bold Lion on 8.09.19.
//  Copyright © 2019 Bold Lion. All rights reserved.
//

import SwiftUI

struct PlayerRow: View {
    
    var player: Player
    
    var body: some View {
        
        HStack() {
            
            Image(player.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .background(Circle().foregroundColor(player.team.color))
                .frame(width: 70.0, height: 70.0)
            
            Text(player.name)
                .bold()
                .font(.system(size: 30))
                .minimumScaleFactor(0.5)
        }
    }
}

struct PlayerRow_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 80))
        }
    }
}
