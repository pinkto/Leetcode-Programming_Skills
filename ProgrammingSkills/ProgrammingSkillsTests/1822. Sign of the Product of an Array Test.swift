//
//  1822. Sign of the Product of an Array Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 21.03.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class ArraySign: XCTestCase {
    func testWhatIsArraySign() {
        let solution = ArraySignClass()

        let input1 = [-1,-2,-3,-4,3,2,1]
        let expectedOutput1 = 1

        let input2 = [1,5,0,2,-3]
        let expectedOutput2 = 0

        let input3 = [-1,1,-1,1,-1]
        let expectedOutput3 = -1

        let result1 = solution.arraySign(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.arraySign(input2)
        XCTAssertEqual(result2, expectedOutput2)

        let result3 = solution.arraySign(input3)
        XCTAssertEqual(result3, expectedOutput3)
    }
}
