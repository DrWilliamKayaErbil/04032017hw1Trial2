//
//  CardinalDirection.swift
//  Directions
//
//  Created by William Erbil on 4/1/17.
//  Copyright © 2017 William Erbil. All rights reserved.
//

enum CardinalDirection {
    case north
    case south
    case east
    case west
}

typealias Location = (x: Int, y: Int)


func measureDistance(_ startingLocation: Location,_ finalLocation: Location) -> Int {
    let xfinal = abs((finalLocation.x - startingLocation.x))
    let yfinal = abs((finalLocation.y - startingLocation.y))
    let distance = xfinal + yfinal
    return distance
}

