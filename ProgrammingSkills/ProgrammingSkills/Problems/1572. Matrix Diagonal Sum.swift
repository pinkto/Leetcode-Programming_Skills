//
//  1572. Matrix Diagonal Sum.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation

class DiagonalSumClass {
    func diagonalSum(_ mat: [[Int]]) -> Int {
        let n = mat.count
        var sum = 0

        for i in 0..<n {
            sum += mat[i][i]

            if i != n - i - 1 {
                sum += mat[i][n - i - 1]
            }
        }

        return sum
    }
}
