//
//  54. Spiral Matrix Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 19.06.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class SpiralOrder: XCTestCase {
    func testSpiralOrder() {
        let solution = SpiralOrderClass()

        let input1 = [[1,2,3],[4,5,6],[7,8,9]]
        let expectedOutput1 = [1,2,3,6,9,8,7,4,5]

        let input2 = [[1,2,3,4],[5,6,7,8],[9,10,11,12]]
        let expectedOutput2 = [1,2,3,4,8,12,11,10,9,5,6,7]

        let result1 = solution.spiralOrder(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.spiralOrder(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
