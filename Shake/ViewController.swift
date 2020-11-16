//
//  ViewController.swift
//  takehome
//
//  Created by Adrien Carvalot on 03/11/2020.
//  Copyright © 2020 Takeoff Labs, Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var users: [User] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        self.loadUsers()
    }

    private func loadUsers() {
        UserService.getUsers { (result: Result<Users, APIServiceError>) in
            switch result {
            case .success(let users):
                self.users = users.users
                
                break
            case .failure(let error):
                // TODO: Handle Error
                print("Error: \(error)")
                break
            }
        }
    }
}
