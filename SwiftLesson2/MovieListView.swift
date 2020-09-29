//
//  MovieListView.swift
//  SwiftLesson2
//
//  Created by Scott Speedie on 20/05/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

struct MovieListView: View {
    var body: some View {
        
        
        ScrollView{
            HStack{
                ForEach(0...100, id: \.self) { number in
                    Text("I am number \(number)")
                }
        }
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView()
    }
}
}

