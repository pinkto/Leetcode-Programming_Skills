//
//  54. Spiral Matrix.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 19.06.2024.
//

import Foundation

class SpiralOrderClass {
    func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        var res = [Int]()

        if matrix.isEmpty {
            return res
        }

        var rowBegin = 0
        var rowEnd = matrix.count - 1
        var colBegin = 0
        var colEnd = matrix[0].count - 1

        while true {
            for j in colBegin...colEnd {
                res.append(matrix[rowBegin][j])
            }
            rowBegin += 1

            if rowBegin > rowEnd {
                break
            }

            for j in rowBegin...rowEnd {
                res.append(matrix[j][colEnd])
            }
            colEnd -= 1

            if colBegin > colEnd {
                break
            }

            for j in stride(from: colEnd, through: colBegin, by: -1) {
                res.append(matrix[rowEnd][j])
            }
            rowEnd -= 1

            if rowBegin > rowEnd {
                break
            }

            for j in stride(from: rowEnd, through: rowBegin, by: -1) {
                res.append(matrix[j][colBegin])
            }
            colBegin += 1

            if colBegin > colEnd {
                break
            }
        }

        return res
    }
}
