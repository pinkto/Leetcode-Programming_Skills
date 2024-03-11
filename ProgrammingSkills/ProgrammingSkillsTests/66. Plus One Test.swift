//
//  66. Plus One Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.03.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class PlusOne: XCTestCase {
    func testPlusOne() {
        let solution = PlusOneClass()

        let input1 = [4,3,2,1]
        let expectedOutput1 = [4, 3, 2, 2]

        let input2 = [7,2,8,5,0,9,1,2,9,5,3,6,6,7,3,2,8,4,3,7,9,5,7,7,4,7,4,9,4,7,0,1,1,1,7,4,0,0,6]
        let expectedOutput2 = [7, 2, 8, 5, 0, 9, 1, 2, 9, 5, 3, 6, 6, 7, 3, 2, 8, 4, 3, 7, 9, 5, 7, 7, 4, 7, 4, 9, 4, 7, 0, 1, 1, 1, 7, 4, 0, 0, 7]

        let result1 = solution.plusOne(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.plusOne(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
