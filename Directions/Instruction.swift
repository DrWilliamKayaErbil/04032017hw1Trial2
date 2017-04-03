//
//  Instruction.swift
//  Directions
//
//  Created by William Erbil on 4/1/17.
//  Copyright © 2017 William Erbil. All rights reserved.
//

enum Instruction {
    case left
    case right
}


func turn(_ instruction: Instruction, fromFacing direction: CardinalDirection) -> CardinalDirection {
    switch (instruction, direction) {
    case (.left,.north):
        return .west
    case (.right,.north):
        return .east
    case (.left,.south):
        return .east
    case (.right,.south):
        return .west
    case (.left,.east):
        return .north
    case (.right,.east):
        return .south
    case (.left,.west):
        return .south
    case (.right,.west):
        return .north
    }
}

func move(facingDirection: CardinalDirection, location: Location, steps: Int) -> Location {
    switch facingDirection {
    case .north:
        return (location.0, location.1 + steps)
    case .south:
        return (location.0, location.1 - steps)
    case .east:
        return (location.0 + steps, location.1)
    case .west:
        return (location.0 - steps, location.1)
    }
}

func travel(startingLocation: Location, facingDirection: CardinalDirection, instructions: (Instruction, Int)) -> (Location, CardinalDirection) {
    let newDirection = turn(instructions.0, fromFacing: facingDirection)
    let newLocation = move(facingDirection: newDirection,location: startingLocation,steps: instructions.1)
    return (newLocation, newDirection)
}

func travelMultiple(startingLocation: Location, facingDirection: CardinalDirection, instructions: [(Instruction,Int)]) -> (Location, CardinalDirection) {
    var currentDirection = facingDirection
    var currentLocation = startingLocation
    for (instruction, stepcount) in instructions {
        currentDirection = turn(instruction, fromFacing: currentDirection)
        currentLocation = move(facingDirection: currentDirection, location: currentLocation, steps: stepcount)
    }
    return (currentLocation, currentDirection)
}





