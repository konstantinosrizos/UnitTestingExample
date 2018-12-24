//
//  Student.swift
//  UnitTestingExample
//
//  Created by Konstantinos Rizos on 24/12/2018.
//  Copyright © 2018 Collection. All rights reserved.
//

import Foundation

class Student {
    
    private let firstName: String
    private let lastName: String
    
    var friends: [Student] = []
    
    init(firstName: String, lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func addFriend(friend: Student) {
        friends.append(friend)
    }
    
    func validFirstName() -> Bool {
        return firstName.count > 3
    }
    
    func validLastName() -> Bool {
        return lastName.count > 3
    }
}
