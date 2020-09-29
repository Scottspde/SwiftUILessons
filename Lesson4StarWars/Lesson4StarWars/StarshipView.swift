//
//  StarshipView.swift
//  Lesson4StarWars
//
//  Created by Scott Speedie on 03/06/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

struct StarshipView: View {
    
    var starship: StarShip
    @ObservedObject var side: Side
    
    var body: some View {
        
        VStack{
            Text(starship.name)
            Button(action: {
                self.side.isDarkSide.toggle()
            }) {
                Text("Change Side!")
            }
        }
        
    }
}
