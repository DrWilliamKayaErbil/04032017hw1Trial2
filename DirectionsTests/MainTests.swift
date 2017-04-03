//
//  MainTests.swift
//  Directions
//
//  Created by William Erbil on 4/2/17.
//  Copyright © 2017 William Erbil. All rights reserved.
//

import XCTest
@testable import Directions

class MainTests: XCTestCase {
    func testMeasureOne() {
        let realMeasure = measureDistance((x:0, y:0), (x:-4, y:0))
        let expectedMeasure = 4
        XCTAssert(realMeasure == expectedMeasure)
    }
    
    func testMeasureTwo() {
        let realMeasure = measureDistance((x:0, y:0), (x:2, y:3))
        let expectedMeasure = 5
        XCTAssert(realMeasure == expectedMeasure)
    }
    func testMeasureThree() {
        let realMeasure = measureDistance((x:0, y:0), (x:0, y:-2))
        let expectedMeasure = 2
        XCTAssert(realMeasure == expectedMeasure)
    }
    
    func testMeasureFour() {
        let realMeasure = measureDistance((x:0, y:0), (x: 10, y: 2))
        let expectedMeasure = 12
        XCTAssert(realMeasure == expectedMeasure)
    }
    
    // problem number 1 test
    func testRealTravelTime() {
        let directions: [(Instruction, Int)] = [(.left, 4), (.left, 4), (.left, 5), (.right, 5), (.right, 4), (.left, 4), (.right, 5), (.right, 4), (.right, 2), (.left, 3), (.right, 1), (.right, 1), (.left, 4), (.left, 5), (.right, 3), (.left, 1), (.left, 1), (.right, 4), (.left, 2), (.right, 1), (.right, 4), (.right, 4), (.left, 2), (.left, 2), (.right, 4), (.left, 4), (.right, 1), (.right, 3), (.left, 3), (.left, 1), (.left, 2), (.right, 1), (.right, 5), (.left, 5), (.left, 1), (.left, 1), (.right, 3), (.right, 5), (.left, 1), (.right, 4), (.left, 5), (.right, 5), (.right, 1), (.left, 185), (.right, 4), (.left, 1), (.right, 51), (.left, 2), (.right, 78), (.right, 1), (.left, 4), (.right, 188), (.right, 1), (.left, 5), (.right, 5), (.right, 2), (.right, 3), (.left, 5), (.right, 3), (.right, 4), (.left, 1), (.right, 2), (.right, 2), (.right, 3), (.right, 2), (.left, 5), (.right, 2), (.left, 1), (.left, 4), (.right, 4), (.left, 4), (.right, 2), (.left, 3), (.left, 4), (.right, 2), (.left, 3), (.right, 3), (.right, 2), (.left, 2), (.left, 3), (.right, 4), (.right, 3), (.right, 1), (.left, 4), (.left, 2), (.left, 5), (.right, 4), (.right, 4), (.left, 1), (.right, 1), (.left, 5), (.left, 1), (.right, 3), (.right, 1), (.left, 2), (.right, 1), (.right, 1), (.right, 3), (.left, 4), (.left, 1), (.left, 3), (.right, 2), (.right, 4), (.right, 2), (.left, 2), (.right, 1), (.left, 5), (.right, 3), (.left, 3), (.right, 3), (.left, 1), (.right, 4), (.left, 3), (.left, 3), (.right, 4), (.left, 2), (.left, 1), (.left, 3), (.right, 2), (.right, 3), (.left, 2), (.left, 1), (.right, 4), (.left, 3), (.left, 5), (.left, 2), (.left, 4), (.right, 1), (.left, 4), (.left, 4), (.right, 3), (.right, 5), (.left, 4), (.left, 1), (.left, 1), (.right, 4), (.left, 2), (.right, 5), (.right, 1), (.right, 1), (.right, 2), (.right, 1), (.right, 5), (.left, 1), (.left, 3), (.left, 5), (.right, 2), (.left, 4), (.left, 4), (.left, 5), (.right, 5), (.right, 4), (.left, 4), (.right, 5), (.right, 4), (.right, 2), (.left, 3), (.right, 1), (.right, 1), (.left, 4), (.left, 5), (.right, 3), (.left, 1), (.left, 1), (.right, 4), (.left, 2), (.right, 1), (.right, 4), (.right, 4), (.left, 2), (.left, 2), (.right, 4), (.left, 4), (.right, 1), (.right, 3), (.left, 3), (.left, 1), (.left, 2), (.right, 1), (.right, 5), (.left, 5), (.left, 1), (.left, 1), (.right, 3), (.right, 5), (.left, 1), (.right, 4), (.left, 5), (.right, 5), (.right, 1), (.left, 185), (.right, 4), (.left, 1), (.right, 51)]
        let (finalRealTravelLocation, _) = travelMultiple(startingLocation: (0,0), facingDirection: .north, instructions: directions)
        let distanceTraveled = measureDistance((0,0), finalRealTravelLocation)
        XCTAssertEqual(distanceTraveled, 370)
    }
    
    // Problem number 2 test
    func testRealTravelStepTwo(){
        let directionsStep2: [(CardinalDirection, Int)] = [(.east, 28), (.east, 8), (.north, 80), (.north, 7), (.east, 12), (.south, 21), (.west, 25), (.north, 29), (.east, 15), (.north, 58), (.east, 66), (.west, 16), (.south, 87), (.west, 1), (.east, 11), (.south, 99), (.west, 92), (.east, 55), (.north, 15), (.north, 23), (.north, 11), (.north, 28), (.south, 32), (.north, 9), (.south, 48), (.west, 9), (.east, 35), (.south, 68), (.north, 5), (.west, 81), (.north, 52), (.south, 9), (.east, 79), (.north, 22), (.west, 55), (.west, 29), (.south, 46), (.north, 76), (.north, 79), (.east, 4), (.east, 51), (.south, 18), (.north, 86), (.south, 39), (.north, 48), (.west, 35), (.west, 69), (.west, 76), (.north, 9), (.north, 58), (.east, 78), (.north, 84), (.east, 65), (.west, 65), (.west, 48), (.east, 97), (.north, 13), (.north, 40), (.north, 94), (.west, 22), (.west, 10), (.east, 67), (.south, 56), (.east, 92), (.east, 20), (.north, 31), (.north, 47), (.east, 16), (.west, 75), (.west, 28), (.north, 19), (.west, 6), (.east, 42), (.east, 83), (.north, 47), (.north, 17), (.north, 38), (.north, 28), (.north, 43), (.north, 95), (.west, 27), (.west, 30), (.south, 7), (.east, 17), (.north, 97), (.north, 12), (.north, 17), (.north, 8), (.south, 37), (.west, 41), (.east, 14), (.east, 68), (.north, 51), (.east, 57), (.west, 21), (.north, 55), (.west, 94), (.south, 61), (.south, 14), (.west, 9), (.south, 78), (.north, 94), (.north, 70), (.east, 36), (.east, 71), (.west, 75), (.north, 99), (.east, 22), (.north, 22), (.west, 42), (.north, 24), (.south, 17), (.east, 0), (.south, 20), (.east, 95), (.east, 94), (.south, 89), (.north, 74), (.south, 44), (.north, 82), (.south, 17), (.north, 28), (.south, 16), (.south, 51), (.south, 97), (.north, 2), (.north, 53), (.north, 33), (.south, 51), (.south, 7), (.south, 12), (.west, 69), (.west, 14), (.north, 17), (.south, 64), (.west, 10), (.east, 18), (.south, 36), (.north, 91), (.north, 2), (.north, 95), (.east, 64), (.west, 88), (.east, 13), (.east, 7), (.south, 85), (.north, 71), (.east, 38), (.south, 83), (.west, 87)]
        let (finalRealTravelLocationStep2) = travelMultipleSteps2(startingLocation: (0,0),instructions: directionsStep2)
        let distanceTraveled = measureDistance((0,0), finalRealTravelLocationStep2)
        XCTAssertEqual(distanceTraveled, 1168)
    }
    // Problem number 3 test
    func testMixedDirectionsStepThree(){
        let directionsStep3: [(MixedDirections, Int)] = [(.right,	87),
                                                         (.right,	12),
                                                         (.SOUTH,	39),
                                                         (.left	,52),
                                                         (.right,	45),
                                                         (.EAST	,34),
                                                         (.EAST	,62),
                                                         (.right,	33),
                                                         (.right,	20),
                                                         (.left	,42),
                                                         (.SOUTH,	6),
                                                         (.WEST	,26),
                                                         (.WEST	,55),
                                                         (.SOUTH,	91),
                                                         (.left	,18),
                                                         (.SOUTH,	10),
                                                         (.EAST	,61),
                                                         (.WEST	,82),
                                                         (.right,	54),
                                                         (.EAST	,46),
                                                         (.left	,49),
                                                         (.SOUTH,	71),
                                                         (.left	,38),
                                                         (.SOUTH,	35),
                                                         (.EAST	,87),
                                                         (.SOUTH,	35),
                                                         (.left	,12),
                                                         (.NORTH,	97),
                                                         (.SOUTH,	46),
                                                         (.right,	61),
                                                         (.right,	59),
                                                         (.right,	13),
                                                         (.NORTH,	58),
                                                         (.WEST	,2),
                                                         (.EAST	,10),
                                                         (.left	,56),
                                                         (.right,	53),
                                                         (.EAST	,42),
                                                         (.NORTH,	88),
                                                         (.NORTH,	60),
                                                         (.EAST	,87),
                                                         (.NORTH,	15),
                                                         (.NORTH,	20),
                                                         (.WEST	,92),
                                                         (.NORTH,	62),
                                                         (.NORTH,	39),
                                                         (.left	,95),
                                                         (.right,	4),
                                                         (.WEST	,62),
                                                         (.right,	29),
                                                         (.NORTH,	72),
                                                         (.right,	31),
                                                         (.left	,72),
                                                         (.NORTH,	29),
                                                         (.right,	30),
                                                         (.left	,41),
                                                         (.NORTH,	80),
                                                         (.right,	22),
                                                         (.WEST	,65),
                                                         (.SOUTH,	99),
                                                         (.EAST	,31),
                                                         (.right,	19),
                                                         (.NORTH,	80),
                                                         (.WEST	,43),
                                                         (.EAST	,96),
                                                         (.left	,88),
                                                         (.NORTH,	77),
                                                         (.EAST	,41),
                                                         (.SOUTH,	76),
                                                         (.right,	65),
                                                         (.SOUTH,	48),
                                                         (.left	,71),
                                                         (.right,	96),
                                                         (.EAST	,85),
                                                         (.EAST	,29),
                                                         (.SOUTH,	45),
                                                         (.left	,70),
                                                         (.SOUTH,	23),
                                                         (.left	,3),
                                                         (.WEST	,26),
                                                         (.EAST	,83),
                                                         (.WEST	,65),
                                                         (.NORTH,	20),
                                                         (.NORTH,	76),
                                                         (.left	,9),
                                                         (.left	,6),
                                                         (.left	,16),
                                                         (.SOUTH,	75),
                                                         (.left	,73),
                                                         (.left	,16),
                                                         (.right,	15),
                                                         (.EAST	,73),
                                                         (.SOUTH,	46),
                                                         (.right,	22),
                                                         (.EAST	,78),
                                                         (.left	,70),
                                                         (.right,	10),
                                                         (.NORTH,	97),
                                                         (.WEST	,18),
                                                         (.SOUTH,	23),
                                                         (.NORTH,	9),
                                                         (.WEST	,21),
                                                         (.right,	58),
                                                         (.EAST	,21),
                                                         (.SOUTH,	22),
                                                         (.SOUTH,	35),
                                                         (.WEST	,37),
                                                         (.NORTH,	33),
                                                         (.SOUTH,	51),
                                                         (.left	,48),
                                                         (.SOUTH,	18),
                                                         (.SOUTH,	97),
                                                         (.EAST	,41),
                                                         (.EAST	,98),
                                                         (.SOUTH,	14),
                                                         (.NORTH,	32),
                                                         (.WEST	,10),
                                                         (.EAST	,70),
                                                         (.left	,38),
                                                         (.EAST	,2),
                                                         (.WEST	,6),
                                                         (.SOUTH,	25),
                                                         (.EAST	,16),
                                                         (.WEST	,39),
                                                         (.SOUTH,	70),
                                                         (.left	,38),
                                                         (.left	,21),
                                                         (.left	,91),
                                                         (.EAST	,33),
                                                         (.right,	90),
                                                         (.right,	31),
                                                         (.left	,57),
                                                         (.left	,68),
                                                         (.NORTH,	31),
                                                         (.WEST	,52),
                                                         (.NORTH,	79),
                                                         (.SOUTH,	6),
                                                         (.SOUTH,	5),
                                                         (.NORTH,	41),
                                                         (.right,	67),
                                                         (.WEST	,8),
                                                         (.NORTH,	55),
                                                         (.left	,21),
                                                         (.right,	38),
                                                         (.NORTH,	85),
                                                         (.NORTH,	7),
                                                         (.left	,6),
                                                         (.NORTH,	21),
                                                         (.left	,55),
                                                         (.NORTH,	85),
                                                         (.left	,66),
                                                         (.EAST	,6),
                                                         (.NORTH,	38),
                                                         (.EAST	,7),
                                                         (.left	,50),
                                                         (.right,	63),
                                                         (.right,	94),
                                                         (.EAST	,70),
                                                         (.EAST	,43),
                                                         (.NORTH,	99),
                                                         (.right,	29),
                                                         (.SOUTH,	45),
                                                         (.SOUTH,	97),
                                                         (.right,	24),
                                                         (.SOUTH,	60),
                                                         (.right,	34),
                                                         (.right,	23),
                                                         (.right,	60),
                                                         (.left	,0),
                                                         (.SOUTH,	52),
                                                         (.EAST	,48),
                                                         (.NORTH,	8),
                                                         (.NORTH,	47),
                                                         (.NORTH,	24),
                                                         (.EAST	,73),
                                                         (.right,	80),
                                                         (.EAST	,1),
                                                         (.EAST	,41),
                                                         (.EAST	,98),
                                                         (.EAST	,46),
                                                         (.NORTH,	44),
                                                         (.WEST	,75),
                                                         (.NORTH,	35),
                                                         (.WEST	,28),
                                                         (.WEST	,62),
                                                         (.left	,85),
                                                         (.SOUTH,	8),
                                                         (.NORTH,	49),
                                                         (.EAST	,84),
                                                         (.right,	22),
                                                         (.EAST	,96),
                                                         (.right,	38),
                                                         (.right,	70),
                                                         (.NORTH,	66),
                                                         (.SOUTH,	75),
                                                         (.EAST	,27),
                                                         (.NORTH,	76),
                                                         (.EAST	,30),
                                                         (.EAST	,85),
                                                         (.NORTH,	49)]
        
        let finalTravel = travelMultipleSteps3(startingLocation: (0,0), instructions: directionsStep3)
        // print(finalTravel)
        let distanceTraveled = measureDistance((0,0), finalTravel)
        // print(distanceTraveled)
        XCTAssertEqual(distanceTraveled, 2006)
        
    }
}
