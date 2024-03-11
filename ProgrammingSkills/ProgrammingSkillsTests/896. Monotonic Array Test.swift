//
//  896. Monotonic Array Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.03.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class MonotonicArray: XCTestCase {
    func testIsMonotic() {
        let solution = IsMonotonicClass()

        let input1 = [1,2,2,3]
        let expectedOutput1 = true

        let input2 = [1,3,2]
        let expectedOutput2 = false

        let result1 = solution.isMonotonic(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.isMonotonic(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
