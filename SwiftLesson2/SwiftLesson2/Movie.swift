//
//  Movie.swift
//  SwiftLesson2
//
//  Created by Scott Speedie on 20/05/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import Foundation

struct Movie: Identifiable {
    
    var id = UUID()
    var title: String
    var description: String
    var imageName: String
    
}

