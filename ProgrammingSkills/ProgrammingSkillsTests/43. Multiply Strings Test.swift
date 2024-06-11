//
//  43. Multiply Strings Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class Multiply: XCTestCase {
    func testMultiply() {
        let solution = MultiplyClass()

        let input1 = ("2", "3")
        let expectedOutput1 = "6"

        let input2 = ("123", "456")
        let expectedOutput2 = "56088"

        let result1 = solution.multiply(input1.0, input1.1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.multiply(input2.0, input2.1)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
