//
//  1523. Count Odd Numbers in an Interval Range.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.06.2024.
//

class CountOddsClass {
    func countOdds(_ low: Int, _ high: Int) -> Int {
         // Если low четное, начнем с следующего нечетного числа
        let adjustedLow = low % 2 == 0 ? low + 1 : low
        // Если high четное, закончим предыдущим нечетным числом
        let adjustedHigh = high % 2 == 0 ? high - 1 : high

        // Если скорректированный low больше high, то нет нечетных чисел в диапазоне
        if adjustedLow > adjustedHigh {
            return 0
        }

        // Вычисляем количество нечетных чисел
        return (adjustedHigh - adjustedLow) / 2 + 1
    }
}
