//
//  28. Find the Index of the First Occurrence in a String Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.03.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class FindTheIndex: XCTestCase {
    func testFindTheIndex() {
        let solution = FindTheIndexClass()

        let input1 = ("abcd", "aebcd")
        let expectedOutput1 = 0

        let input2 = ("abcd", "abcid")
        let expectedOutput2 = -1

        let result1 = solution.strStr(input1.0, input1.1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.strStr(input2.0, input2.1)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
