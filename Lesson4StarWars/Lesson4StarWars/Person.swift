//
//  Person.swift
//  Lesson4StarWars
//
//  Created by Scott Speedie on 03/06/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import Foundation

struct Person: Decodable {
    var name: String
    var hair_color: String
    var eye_color: String
    
}


struct StarShip: Decodable, Hashable {
    var name: String
    var model: String
    var passengers: String
    var cost_in_credits: String
}
