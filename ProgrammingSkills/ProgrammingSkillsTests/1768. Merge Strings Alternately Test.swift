//
//  1768. Merge Strings Alternately Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.03.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class MergeAlternately: XCTestCase {
    func testMergeAlternately() {
        let solution = MergeStringsAlternately()

        let input1 = ("abc", "def")
        let expectedOutput1 = "adbecf"

        let input2 = ("hello", "world")
        let expectedOutput2 = "hweolrllod"

        let result1 = solution.mergeAlternately(input1.0, input1.1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.mergeAlternately(input2.0, input2.1)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
