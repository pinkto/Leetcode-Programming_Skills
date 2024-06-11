//
//  976. Largest Perimeter Triangle Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class LargestPerimeter: XCTestCase {
    func testLargestPerimeter() {
        let solution = LargestPerimeterClass()

        let input1 = [2,1,2]
        let expectedOutput1 = 5

        let input2 = [1,2,1,10]
        let expectedOutput2 = 0

        let result1 = solution.largestPerimeter(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.largestPerimeter(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
