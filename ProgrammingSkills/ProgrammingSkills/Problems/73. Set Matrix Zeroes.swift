//
//  73. Set Matrix Zeroes.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation

class SetZeroesClass {
    func setZeroes(_ matrix: inout [[Int]]) {
        let m = matrix.count
        let n = matrix[0].count
        var firstRowHasZero = false
        var firstColHasZero = false

        // Проверка первой строки на наличие нулей
        for j in 0..<n {
            if matrix[0][j] == 0 {
                firstRowHasZero = true
                break
            }
        }

        // Проверка первого столбца на наличие нулей
        for i in 0..<m {
            if matrix[i][0] == 0 {
                firstColHasZero = true
                break
            }
        }

        // Маркировка строк и столбцов, которые нужно обнулить
        for i in 1..<m {
            for j in 1..<n {
                if matrix[i][j] == 0 {
                    matrix[i][0] = 0
                    matrix[0][j] = 0
                }
            }
        }

        // Обнуление строк и столбцов на основе маркировки
        for i in 1..<m {
            for j in 1..<n {
                if matrix[i][0] == 0 || matrix[0][j] == 0 {
                    matrix[i][j] = 0
                }
            }
        }

        // Обнуление первой строки, если необходимо
        if firstRowHasZero {
            for j in 0..<n {
                matrix[0][j] = 0
            }
        }

        // Обнуление первого столбца, если необходимо
        if firstColHasZero {
            for i in 0..<m {
                matrix[i][0] = 0
            }
        }
    }
}
