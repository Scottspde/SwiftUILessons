//
//  PlanetInfoView.swift
//  StarWarsCharacterBuilder
//
//  Created by Scott Speedie on 03/06/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

struct PlanetInfoView: View {
    
    var planetResult: [PlanetResult] = []
    
    var body: some View {
        VStack{
            Text("hello")
        }
    }
}

struct PlanetInfoView_Previews: PreviewProvider {
    static var previews: some View {
        PlanetInfoView(planetName: planetResult)
    }
}
