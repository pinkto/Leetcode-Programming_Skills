//
//  283. Move Zeroes Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.03.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class MoveZeroes: XCTestCase {
    func testFindTheIndex() {
        let solution = MoveZeroesClass()

        var input1 = [0,1,0,3,12]
        let expectedOutput1 = [1, 3, 12, 0, 0]

        var input2 = [0,1,1,0]
        let expectedOutput2 = [1, 1, 0, 0]

        solution.moveZeroes(&input1)
        XCTAssertEqual(input1, expectedOutput1)

        solution.moveZeroes(&input2)
        XCTAssertEqual(input2, expectedOutput2)
    }
}
