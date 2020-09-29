//
//  StarShipResponse.swift
//  Lesson4StarWars
//
//  Created by Scott Speedie on 03/06/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import Foundation

struct StarShipResponse: Decodable {
    var count: Int
    var results: [StarShip]
}
