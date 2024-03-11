//
//  896. Monotonic Array.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.03.2024.
//

class IsMonotonicClass {
    func isMonotonic(_ nums: [Int]) -> Bool {
       // 1. Последовательности могут быть строго возрастающими и строго убывающими
        var increasing = true
        var decreasing = true

        // Последовательность называется строго возрастающей, если каждый её член, начиная со второго, больше предыдущего
        // Проходимся по каждому элементу массива
        for i in 1..<nums.count {

            // Проверяем меньше ли текущий элемент, чем предыдущий, чтобы понять явлеяется ли последовательность убывающей
            if nums[i] < nums[i-1] {
                increasing = false
            }

            // Проверяем меньше ли текущий элемент, чем предыдущий, чтобы понять явлеяется ли последовательность возрастающей
            if nums[i] > nums[i-1] {
                decreasing = false
            }
        }

        return increasing || decreasing
    }
}
