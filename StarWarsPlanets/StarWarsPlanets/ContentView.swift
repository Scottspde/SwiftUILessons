//
//  ContentView.swift
//  StarWarsPlanets
//
//  Created by Scott Speedie on 03/06/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private let url = URL(string: "https://swapi.dev/api/planets/")!
        
     @State var planetResult: [PlanetResult] = []
     @State var planets: Planets
        
    var body: some View {
        
        NavigationView{
            List{
                
                ForEach(planets.results, id: \.self) { planetName in
//                    NavigationLink(destination: PlanetView(planets: planetName)) {
                        Text(planetName.name)
//                    }
                }
            }
            .onAppear(perform: self.loadAPI)
            .navigationBarTitle("Choose Planet")
            
        }
    }
    
    
    
    func loadAPI(){
        
        // URL request
        let request = URLRequest(url: url)
        
        URLSession.shared.dataTask(with: request ) { data, response, error in
            
            if let data = data {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                // Use data to try and make into profile model - else bail
                if let planets = try? decoder.decode(Planets.self, from: data) {
                    
                    self.planets = planets
                }
            }
        }
        .resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
