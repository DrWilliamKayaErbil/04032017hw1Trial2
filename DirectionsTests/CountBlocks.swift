//
//  File.swift
//  Directions
//
//  Created by William Erbil on 4/1/17.
//  Copyright © 2017 William Erbil. All rights reserved.
//

import XCTest
@testable import Directions

class MoveFromAnyPlace: XCTestCase {
    func testTupleOne() {
        let (resultLocation, resultDirection) = travel(startingLocation: (0,0), facingDirection: .north, instructions:(.left, 4))
        let (expectedLocation, expectedDirection): (Location, CardinalDirection) = ((-4, 0), .west)
        XCTAssert(resultLocation == expectedLocation)
        XCTAssert(resultDirection == expectedDirection)
    }
    
    
    func testTupleMultipleOne() {
        let (resultLocation, resultDirection) = travelMultiple(startingLocation: (0,0), facingDirection: .north, instructions: [(.right, 2),(.left, 3)])
        let (expectedLocation, expectedDirection): (Location, CardinalDirection) = ((2, 3), .north)
        XCTAssert(resultLocation == expectedLocation)
        XCTAssert(resultDirection == expectedDirection)
    }
    
    func testTupleMultipleTwo() {
        let (resultLocation, resultDirection) = travelMultiple(startingLocation: (0,0), facingDirection: .north, instructions: [(.right, 2),(.right, 2),(.right, 2)])
        let (expectedLocation, expectedDirection): (Location, CardinalDirection) = ((0, -2), .west)
        XCTAssert(resultLocation == expectedLocation)
        XCTAssert(resultDirection == expectedDirection)
    }
    
    func testTupleMultipleThree() {
        let (resultLocation, resultDirection) = travelMultiple(startingLocation: (0,0), facingDirection: .north, instructions: [(.right, 5),(.left, 5),(.right, 5),(.right, 3)])
        let (expectedLocation, expectedDirection): (Location, CardinalDirection) = ((10, 2), .south)
        XCTAssert(resultLocation == expectedLocation)
        XCTAssert(resultDirection == expectedDirection)
    }
    
    
}
