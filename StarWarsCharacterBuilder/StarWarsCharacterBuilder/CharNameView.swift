//
//  CharNameView.swift
//  StarWarsCharacterBuilder
//
//  Created by Scott Speedie on 01/06/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

class CharName: ObservableObject {
    @Published var characterName: String
}

struct CharNameView: View {
    
    @ObservableObject var charName: CharName
    
    var body: some View {
        
        VStack{
            Text("Choose you character name.")
            
//            TextField("Character name ...", text: $text)
        }
    }
}

struct CharNameView_Previews: PreviewProvider {
    static var previews: some View {
        CharNameView()
    }
}
