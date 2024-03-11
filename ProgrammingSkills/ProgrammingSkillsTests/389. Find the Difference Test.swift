//
//  389. Find the Difference Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.03.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class FindTheDifference: XCTestCase {
    func findTheDifference() {
        let solution = FindTheDifferenceClass()

        let input1 = ("abcd", "aebcd")
        let expectedOutput1 = Character("e")

        let input2 = ("abcd", "abcid")
        let expectedOutput2 = Character("i")

        let result1 = solution.findTheDifference(input1.0, input1.1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.findTheDifference(input2.0, input2.1)
        XCTAssertEqual(result2, expectedOutput2)
    }
}

