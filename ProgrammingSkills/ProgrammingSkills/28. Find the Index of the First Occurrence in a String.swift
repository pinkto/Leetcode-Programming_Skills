//
//  28. Find the Index of the First Occurrence in a String.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.03.2024.
//

class FindTheIndexClass {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        guard !Array(haystack).isEmpty else { return 0 }

        let array1 = Array(haystack)
        let array2 = Array(needle)

        if array1.count >= array2.count {
            for i in 0...(array1.count - array2.count) {
                for j in 0...array2.count {
                    if array1[i + j] != array2[j] {
                        break
                    } else if j == array2.count - 1 {
                        return i
                    }
                }
            }
        }

        return -1
    }
}
