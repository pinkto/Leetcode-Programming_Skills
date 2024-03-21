//
//  13. Roman to Integer Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 21.03.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class RomanToInt: XCTestCase {
    func testRomanToInt() {
        let solution = RomanToIntClass()

        let input1 = "III"
        let expectedOutput1 = 3

        let input2 = "MCMXCIV"
        let expectedOutput2 = 1994

        let result1 = solution.romanToInt(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.romanToInt(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
