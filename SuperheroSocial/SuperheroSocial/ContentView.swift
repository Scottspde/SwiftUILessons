//
//  ContentView.swift
//  SuperheroSocial
//
//  Created by Scott Speedie on 27/05/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    private let url = URL(string: "https://gist.githubusercontent.com/isaacmendez/dec95b87bc9360f71542b1aaae8cb5e7/raw/f1792cf4e768f02aacf95902b819b887eb40a635/Profile")!
    
    @State var profile: Profile?
    
    var body: some View {
        
        NavigationView{
            
            
                    
                    Text(profile?.userName ?? "No Name")

        }
    .onAppear(perform: loadProfile)
    .navigationBarTitle("Superhero Social")
    }
    
    
    
    func loadProfile() {
        // URL request
        let request = URLRequest(url: url)
        
        // data task
        URLSession.shared.dataTask(with: request) { data, respose, error in
            // if we have data unwrap and pass in - else bail
            if let data = data {
                
                // Use data to try and make into profile model - else bail
                if let profile = try? JSONDecoder().decode(Profile.self, from: data) {
                    
                    self.profile = profile
                    
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
