//
//  RootAPI.swift
//  StarWarsCharacterBuilder
//
//  Created by Scott Speedie on 01/06/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import Foundation

struct Root: Decodable, Hashable {
    var films: String
    var people: String
    var planets: String
    var species: String
    var starships: String
    var vehicles: String
}
