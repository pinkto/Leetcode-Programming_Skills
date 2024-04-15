//
//  657. Robot Return to Origin Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 15.04.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class RobotReturn: XCTestCase {
    func testRobotReturn() {
        let solution = RobotReturnClass()

        let input1 = "UD"
        let expectedOutput1 = true

        let input2 = "LL"
        let expectedOutput2 = false

        let result1 = solution.judgeCircle(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.judgeCircle(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
