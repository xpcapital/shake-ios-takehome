//
//  Profile.swift
//  takehome
//
//  Created by Timothy Lenardo on 6/9/20.
//  Copyright © 2020 Takeoff Labs, Inc. All rights reserved.
//

import Foundation

struct User: Decodable {
    let username: String
    let pictureURL: String
    let stories: [Story]

    enum CodingKeys: String, CodingKey {
        case username,
             pictureURL,
             stories
    }
}

struct Users: Decodable {
    let users: [User]
}

