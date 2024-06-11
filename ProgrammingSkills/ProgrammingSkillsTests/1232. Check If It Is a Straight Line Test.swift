//
//  1232. Check If It Is a Straight Line Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class CheckStraightLine: XCTestCase {
    func testCheckStraightLine() {
        let solution = CheckStraightLineClass()

        let input1 = [[1,2],[2,3],[3,4],[4,5],[5,6],[6,7]]
        let expectedOutput1 = true

        let input2 = [[1,1],[2,2],[3,4],[4,5],[5,6],[7,7]]
        let expectedOutput2 = false

        let result1 = solution.checkStraightLine(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.checkStraightLine(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
