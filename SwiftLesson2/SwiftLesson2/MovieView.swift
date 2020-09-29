//
//  MovieView.swift
//  SwiftLesson2
//
//  Created by Scott Speedie on 20/05/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import SwiftUI

struct MovieView: View {
    
    @State var isLiked: Bool = false
    
    var movie: Movie
    
    var body: some View {
        
        VStack {
            Text(movie.title)
            Text(movie.description)
            Toggle(isOn: $isLiked) {
                Text("Did I like this")
            }
        }
        .background(isLiked ? Color.blue : Color.red)
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(movie: Movie(title: "title", description: "Something", imageName: "galaxy"))
    }
}
