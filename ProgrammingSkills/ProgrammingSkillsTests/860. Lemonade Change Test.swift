//
//  860. Lemonade Change Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class LemonadeChange: XCTestCase {
    func testLemonadeChange() {
        let solution = LemonadeChangeClass()

        let input1 = [5,5,5,10,20]
        let expectedOutput1 = true

        let input2 = [5,5,10,10,20]
        let expectedOutput2 = false

        let result1 = solution.lemonadeChange(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.lemonadeChange(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
