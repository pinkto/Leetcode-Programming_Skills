//
//  58. Length of Last Word Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 01.04.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class LastWordLength: XCTestCase {
    func testWhatIsLength() {
        let solution = LastWordLengthClass()

        let input1 = "Hello World"
        let expectedOutput1 = 5

        let input2 = "   fly me   to   the moon  "
        let expectedOutput2 = 4

        let result1 = solution.lengthOfLastWord(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.lengthOfLastWord(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}

