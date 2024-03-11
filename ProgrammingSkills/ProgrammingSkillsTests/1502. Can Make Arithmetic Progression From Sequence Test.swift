//
//  1502. Can Make Arithmetic Progression From Sequence Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.03.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class CanMakeArithmeticProgression: XCTestCase {
    func testCanMakeArithmeticProgression() {
        let solution = CanMakeArithmeticProgressionClass()

        let input1 = [3,5,1]
        let expectedOutput1 = true

        let input2 = [1,2,4]
        let expectedOutput2 = false

        let result1 = solution.canMakeArithmeticProgression(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.canMakeArithmeticProgression(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
