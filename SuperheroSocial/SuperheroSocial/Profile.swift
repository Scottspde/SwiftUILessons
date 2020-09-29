//
//  Profile.swift
//  SuperheroSocial
//
//  Created by Scott Speedie on 27/05/2020.
//  Copyright © 2020 ScottSpeedie. All rights reserved.
//

import Foundation

struct Profile: Decodable, Hashable {
    var userName: String
    var age: Int
    var profilePhotoURL: URL
    var bio: String
}
