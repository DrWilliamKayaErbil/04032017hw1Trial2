//
//  LocationTests.swift
//  Directions
//
//  Created by William Erbil on 4/1/17.
//  Copyright © 2017 William Erbil. All rights reserved.
//

import XCTest
@testable import Directions

class LocationTests: XCTestCase {
    func testmoveUp() {
        let result = move(facingDirection: .north, location: (0, 0), steps: 1)
        let expected: Location = (0, 1)
        XCTAssert(result == expected)
    }
    func testmoveDown() {
        let result = move(facingDirection: .south, location: (0, 0), steps: 1)
        let expected: Location = (0, -1)
        XCTAssert(result == expected)
    }
    func testmoveLeft() {
        let result = move(facingDirection: .east, location: (0, 0), steps: 1)
        let expected: Location = (1, 0)
        XCTAssert(result == expected)
    }
    func testmoveRight() {
        let result = move(facingDirection: .west, location: (0, 0), steps: 1)
        let expected: Location = (-1, 0)
        XCTAssert(result == expected)
    }
    
}
