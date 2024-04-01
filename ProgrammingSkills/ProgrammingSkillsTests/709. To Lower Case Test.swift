//
//  709. To Lower Case Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 01.04.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class LowerCase: XCTestCase {
    func testLowerCase() {
        let solution = LowerCaseClass()

        let input1 = "Hello"
        let expectedOutput1 = "hello"

        let input2 = "LOVELY"
        let expectedOutput2 = "lovely"

        let result1 = solution.toLowerCase(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.toLowerCase(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
