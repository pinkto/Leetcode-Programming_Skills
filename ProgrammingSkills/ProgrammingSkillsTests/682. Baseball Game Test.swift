//
//  682. Baseball Game Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 15.04.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class BaseballGame: XCTestCase {
    func testCalPoints() {
        let solution = BaseballGameClass()

        let input1 = ["5","2","C","D","+"]
        let expectedOutput1 = 30

        let input2 = ["5","-2","4","C","D","9","+","+"]
        let expectedOutput2 = 27

        let result1 = solution.calPoints(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.calPoints(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
