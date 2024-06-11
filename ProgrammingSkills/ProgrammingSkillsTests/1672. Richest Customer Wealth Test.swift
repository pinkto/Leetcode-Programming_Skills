//
//  1672. Richest Customer Wealth Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class MaxWealth: XCTestCase {
    func testMaxWealth() {
        let solution = MaxWealthClass()

        let input1 = [[1,2,3],[3,2,1]]
        let expectedOutput1 = 6

        let input2 = [[1,5],[7,3],[3,5]]
        let expectedOutput2 = 10

        let result1 = solution.maximumWealth(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.maximumWealth(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
