//
//  1041. Robot Bounded In Circle.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 10.06.2024.
//

import Foundation

class RobotBoundedClass {
    func isRobotBounded(_ instructions: String) -> Bool {
    let directions = [(0, 1), (1, 0), (0, -1), (-1, 0)]
    var x = 0, y = 0, dir = 0

    for instruction in instructions {
        switch instruction {
        case "G":
            x += directions[dir].0
            y += directions[dir].1
        case "L":
            dir = (dir + 3) % 4
        case "R":
            dir = (dir + 1) % 4
        default:
            break
        }
    }

    return (x == 0 && y == 0) || dir != 0
    }
}
