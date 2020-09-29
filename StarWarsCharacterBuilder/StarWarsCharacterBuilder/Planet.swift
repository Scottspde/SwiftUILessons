//
//  Planet.swift
//  StarWarsCharacterBuilder
//
//  Created by Scott Speedie on 01/06/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import Foundation

struct Planets: Decodable, Hashable {
    let count: Int
    let results: [PlanetResult]
}


// Model for planet data
struct PlanetResult: Decodable, Hashable {
    let name: String
    let population: String
    let terrain: String
    let url: URL
}
