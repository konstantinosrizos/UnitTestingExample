//
//  StudentTest.swift
//  UnitTestingExampleTests
//
//  Created by Konstantinos Rizos on 24/12/2018.
//  Copyright © 2018 Collection. All rights reserved.
//

import Foundation
import XCTest

@testable import UnitTestingExample

class StudentTest: XCTestCase {
    
    func testValidFirstName() {
        
        let student = Student(firstName: "Paul", lastName: "Logun")
        
        XCTAssertTrue(student.validFirstName())
    }
    
    func testValidLastName() {
        
        let student = Student(firstName: "Steve", lastName: "McKinley")
        
        XCTAssertTrue(student.validLastName())
    }
    
    func testAddFriend() {
        
        let tom = Student(firstName: "Tom", lastName: "Catman")
        let mike = Student(firstName: "Mike", lastName: "Daglas")
        
        XCTAssertTrue(tom.friends.count == 0)
        
        tom.addFriend(friend: mike)
        
        XCTAssertTrue(tom.friends.count > 0)
        
    }
}
