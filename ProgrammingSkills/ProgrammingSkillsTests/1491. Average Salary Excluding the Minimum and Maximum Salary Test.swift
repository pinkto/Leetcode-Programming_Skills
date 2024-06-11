//
//  1491. Average Salary Excluding the Minimum and Maximum Salary Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class Average: XCTestCase {
    func testAverage() {
        let solution = AverageClass()

        let input1 = [4000,3000,1000,2000]
        let expectedOutput1 = 2500.00000

        let input2 = [1000,2000,3000]
        let expectedOutput2 = 2000.00000

        let result1 = solution.average(input1)
        XCTAssertEqual(result1, expectedOutput1)
        
        let result2 = solution.average(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
