//
//  1275. Find Winner on a Tic Tac Toe Game Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 10.06.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class TicTacGame: XCTestCase {
    func testTicTacToe() {
        let solution = TicTacGameClass()

        let input1 = [[0,0],[2,0],[1,1],[2,1],[2,2]]
        let expectedOutput1 = "A"

        let input2 = [[0,0],[1,1],[2,0],[1,0],[1,2],[2,1],[0,1],[0,2],[2,2]]
        let expectedOutput2 = "Draw"

        let result1 = solution.tictactoe(input1)
        XCTAssertEqual(result1, expectedOutput1)

        let result2 = solution.tictactoe(input2)
        XCTAssertEqual(result2, expectedOutput2)
    }
}
