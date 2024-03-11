//
//  242. Valid Anagram.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.03.2024.
//

class ValidAnagramClass {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var freq: [Character: Int] = [:]

        for char in s {
            freq[char, default: 0] += 1
        }

        for char in t {
            if let count = freq[char] {
                freq[char] = count - 1

                if freq[char]! < 0 {
                    return false
                }
            } else {
                return false
            }
        }

        return freq.values.allSatisfy { $0 == 0 }
    }
}
