//
//  1572. Matrix Diagonal Sum Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class DiagonalSum: XCTestCase {
    func testDiagonalSum() {
        let solution = DiagonalSumClass()

        let input1 = [[1,2,3],
                      [4,5,6],
                      [7,8,9]]
        let expectedOutput1 = 25

        let input2 = [[1,1,1,1],
                      [1,1,1,1],
                      [1,1,1,1],
                      [1,1,1,1]]
        let expectedOutput2 = 8

        let result1 = solution.diagonalSum(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.diagonalSum(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
