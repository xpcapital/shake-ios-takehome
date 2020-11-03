//
//  UserService.swift
//  takehome
//
//  Created by Timothy Lenardo on 6/9/20.
//  Copyright © 2020 Takeoff Labs, Inc. All rights reserved.
//

import Foundation

enum UserService {

    static func getUsers(completion: @escaping (Result<Users, APIServiceError>) -> Void) {
        guard let url = URL(string: EndPoints.Profiles.rawValue) else {
            return completion(.failure(.invalidUrl))
        }

        URLSession.shared.resumeDataTask(with: url, withTypedResponse: completion)
    }
}
