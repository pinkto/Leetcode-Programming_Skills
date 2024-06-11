//
//  1523. Count Odd Numbers in an Interval Range Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class CountOdds: XCTestCase {
    func testCountOdds() {
        let solution = CountOddsClass()

        let input1 = (3, 7)
        let expectedOutput1 = 3

        let input2 = (8, 10)
        let expectedOutput2 = 1

        let result1 = solution.countOdds(input1.0, input1.1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.countOdds(input2.0, input2.1)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
