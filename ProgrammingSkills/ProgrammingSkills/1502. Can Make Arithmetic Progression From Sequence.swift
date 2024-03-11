//
//  1502. Can Make Arithmetic Progression From Sequence.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.03.2024.
//

class CanMakeArithmeticProgressionClass {
    func canMakeArithmeticProgression(_ arr: [Int]) -> Bool {
        guard arr.count >= 2 else {
        return false
    }

    let sortedArr = arr.sorted()
    let commonDifference = sortedArr[1] - sortedArr[0]

    for i in 2..<sortedArr.count {
        if sortedArr[i] - sortedArr[i-1] != commonDifference {
            return false
        }
    }

    return true
    }
}
