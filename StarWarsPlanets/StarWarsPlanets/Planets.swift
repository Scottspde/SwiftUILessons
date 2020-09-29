//
//  Planets.swift
//  StarWarsPlanets
//
//  Created by Scott Speedie on 03/06/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import Foundation

struct Planets: Decodable, Hashable {
    var count: Int
    var results: [PlanetResult]
}


// Model for planet data

struct PlanetResult: Decodable, Hashable {
    var name: String
    var population: String
    var terrain: String
    var residents: String
}
