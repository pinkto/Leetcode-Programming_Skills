//
//  73. Set Matrix Zeroes.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class SetZeroes: XCTestCase {
    func testSetZeroes() {
        let solution = SetZeroesClass()

        var input1 = [[1,1,1],[1,0,1],[1,1,1]]
        let expectedOutput1 = [[1,0,1],[0,0,0],[1,0,1]]

        var input2 = [[0,1,2,0],[3,4,5,2],[1,3,1,5]]
        let expectedOutput2 = [[0,0,0,0],[0,4,5,0],[0,3,1,0]]

        solution.setZeroes(&input1)
        XCTAssertEqual(input1, expectedOutput1)

        solution.setZeroes(&input2)
        XCTAssertEqual(input2, expectedOutput2)
    }
}

