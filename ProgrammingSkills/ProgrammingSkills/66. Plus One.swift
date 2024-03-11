//
//  66. Plus One.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.03.2024.
//

class PlusOneClass {
    func plusOne(_ digits: [Int]) -> [Int] {
        var offset = 1
        var result = digits

        for i in stride(from: digits.count - 1, through: 0, by: -1) {
            result[i] += offset
            offset = result[i] / 10
            result[i] %= 10
        }

        if offset > 0 {
            result.insert(offset, at: 0)
        }
        return result
    }
}
