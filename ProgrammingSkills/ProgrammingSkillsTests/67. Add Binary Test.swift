//
//  67. Add Binary Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class AddBinary: XCTestCase {
    func testAddBinary() {
        let solution = AddBinaryClass()

        let input1 = ("1010", "1011")
        let expectedOutput1 = "10101"

        let input2 = ("11", "1")
        let expectedOutput2 = "100"

        let result1 = solution.addBinary(input1.0, input1.1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.addBinary(input2.0, input2.1)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
