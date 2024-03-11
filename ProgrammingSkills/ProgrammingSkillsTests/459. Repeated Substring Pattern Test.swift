//
//  459. Repeated Substring Pattern Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.03.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class RepeatedSubstringPattern: XCTestCase {
    func testRepeatedSubstringPattern() {
        let solution = RepeatedSubstringPatternClass()

        let input1 = "aaaaaaaaaaab"
        let expectedOutput1 = false

        let input2 = "abcabcabcabc"
        let expectedOutput2 = true

        let result1 = solution.repeatedSubstringPattern(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.repeatedSubstringPattern(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
