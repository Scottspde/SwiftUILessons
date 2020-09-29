//
//  ContentView.swift
//  MyFirstApp
//
//  Created by Scott Speedie on 13/05/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

struct ContentView: View
{
    var body: some View
    {
        ZStack{
            
            Image("MDC")
                .resizable()
                .opacity(0.50)
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                VStack {
                    Text("Choose")
                        .font(.largeTitle)
                        .bold()
                        .shadow(color: .black, radius: 10, x: 1, y: 1)
                    Text("Your")
                        .font(.largeTitle)
                        .bold()
                        .shadow(color: .black, radius: 10, x: 1, y: 1)
                    Text("Superhero")
                        .font(.largeTitle)
                        .bold()
                        .shadow(color: .black, radius: 10, x: 1, y: 1)
                }
                .padding(20)
                
                HStack {
                    Button(action: {
                        // Function in here
                        print("Avengers Assemble!")
                    }) {
                        // Text in here
                        Text("MARVEL")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.red)
                            .shadow(color: .yellow, radius: 20, x: 1, y: 1)
                        
                    }
                    .shadow(color: .yellow, radius: 20, x: 1, y: 1)
                    
                    Button(action: {
                        // Function in here
                        print("Justice League ... GO?")
                    }) {
                        // Text in here
                        Text("DC Comics")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0/255, green: 0/255, blue: 102/255, opacity: 1.0))
                            .padding()
                            .background(Color(red: 32/255, green: 32/255, blue: 32/255, opacity: 0.90))
                        
                            .shadow(color: Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.75), radius: 10, x: 1, y: 1)
                        
                    }
                .shadow(color: Color(red: 0/255, green: 0/255, blue: 102/255, opacity: 1.0), radius: 30, x: 1, y: 1)
                }
                .padding()
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            Group{
                ContentView()
                    .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro Max"))
            }
        }
    }
}
