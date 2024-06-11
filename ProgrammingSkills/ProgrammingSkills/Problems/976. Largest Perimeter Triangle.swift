//
//  976. Largest Perimeter Triangle.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.06.2024.
//

class LargestPerimeterClass {
    func largestPerimeter(_ nums: [Int]) -> Int {
        let sortedNums = nums.sorted(by: >)

        for i in 0..<(sortedNums.count - 2) {
            if sortedNums[i] < sortedNums[i + 1] + sortedNums[i + 2] {
                return sortedNums[i] + sortedNums[i + 1] + sortedNums[i + 2]
            }
        }

        return 0
    }
}
