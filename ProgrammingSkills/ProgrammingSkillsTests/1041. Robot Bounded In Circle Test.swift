//
//  1041. Robot Bounded In Circle Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class RobotBounded: XCTestCase {
    func testIsRobotBounded() {
        let solution = RobotBoundedClass()

        let input1 = "GGLLGG"
        let expectedOutput1 = true

        let input2 = "GG"
        let expectedOutput2 = false

        let result1 = solution.isRobotBounded(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.isRobotBounded(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}

