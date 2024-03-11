//
//  242. Valid Anagram Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.03.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class ValidAnagram: XCTestCase {
    func testValidAnagram() {
        let solution = ValidAnagramClass()

        let input1 = ("anagram", "nagaram")
        let expectedOutput1 = true

        let input2 = ("rat", "car")
        let expectedOutput2 = false

        let result1 = solution.isAnagram(input1.0, input1.1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.isAnagram(input2.0, input2.1)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
