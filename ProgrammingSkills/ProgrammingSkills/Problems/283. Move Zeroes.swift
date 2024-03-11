//
//  283. Move Zeroes.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.03.2024.
//

class MoveZeroesClass {
    func moveZeroes(_ nums: inout [Int]) {
        var zeroCounter = 0

        for i in 0..<nums.count {
            if nums[i] != 0 {
                nums.swapAt(zeroCounter, i)
                zeroCounter += 1
            }
        }
        print(nums)
    }
}
