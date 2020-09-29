//
//  Species.swift
//  StarWarsCharacterBuilder
//
//  Created by Scott Speedie on 01/06/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import Foundation

struct Species: Decodable, Hashable {
    var count: Int
    var results: [SpeciesResult]
}

// Model for species
struct SpeciesResult: Decodable, Hashable {
    var name: String
    var classification: String
    var designation: String
    var average_height: String
    var average_lifespan: String
    var eye_colors: String
    var hair_colors: String
    var language: String
    var homeworld: String
    var people: String
    var films: String
    var url: String
    var created: String
    var edited: String
    
}
