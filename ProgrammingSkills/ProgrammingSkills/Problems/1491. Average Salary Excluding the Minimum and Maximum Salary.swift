//
//  1491. Average Salary Excluding the Minimum and Maximum Salary.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.06.2024.
//

class AverageClass {
    func average(_ salary: [Int]) -> Double {
        guard salary.count > 2 else { return 0.0 }

        let sorted = salary.sorted()

        // Исключаем минимальное и максимальное значения
        let subArray = sorted[1..<(sorted.count - 1)]

        // Вычисляем среднее оставшихся значений
        let sum = subArray.reduce(0, +)
        let average = Double(sum) / Double(subArray.count)

        return Double(average)
    }
}
