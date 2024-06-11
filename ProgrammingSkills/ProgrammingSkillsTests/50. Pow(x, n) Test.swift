//
//  50. Pow(x, n) Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class MyPow: XCTestCase {
    func testMyPow() {
        let solution = MyPowClass()

        let input1 = (2.00000, 10)
        let expectedOutput1 = 1024.00000

        let input2 = (2.10000, 3)
        let expectedOutput2 = 9.261000000000001

        let result1 = solution.myPow(input1.0, input1.1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.myPow(input2.0, input2.1)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
