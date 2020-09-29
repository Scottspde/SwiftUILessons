//
//  ContentView.swift
//  Lesson4StarWars
//
//  Created by Scott Speedie on 03/06/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    // Single Person Model
    let singlePersonURL = URL(string: "https://swapi.dev/api/people/1/")!
    // Array of Starship Models
    let starshipsURL = URL(string: "https://swapi.dev/api/starships/")!
    @State private var person: Person?
    @State private var starships: [StarShip] = []
    
    @ObservedObject var side = Side()
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                
                Text(person?.name ?? "No Name")
                
                List {
                    ForEach(starships, id: \.self) { ship in
                        NavigationLink(destination: StarshipView(starship: ship, side: self.side)) {
                            Text(ship.name)
                        }
                        
                    }
                }
                
            }
            .onAppear(perform: loadPerson)
            .onAppear(perform: loadStarships)
            
            
        }
    .navigationBarTitle("Chose a ship")
        .navigationBarItems(trailing: Button(action: {
            self.side.isDarkSide.toggle()
        }) {
            Text("Change Side!")
        }
        .environment(\.colorScheme, (self.side.isDarkSide ? .dark : .light))
    }
    
    
    func loadPerson(){
        let request = URLRequest(url: singlePersonURL)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            // unwrap the data if we can
            
            if let data = data {
                
                if let person = try? JSONDecoder().decode(Person.self, from: data) {
                    self.person = person
                    
                }
                
            }
            
        }
        .resume()
        
    }
    
    private func loadStarships() {
        
        let request = URLRequest(url: starshipsURL)
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            
            if let data = data {
                
                if let response = try? JSONDecoder().decode(StarShipResponse.self, from: data) {
                    
                    withAnimation {
                        
                        self.starships = response.results
                        
                    }
                }
            }
            
        }.resume()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
