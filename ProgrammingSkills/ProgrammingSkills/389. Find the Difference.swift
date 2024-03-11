//
//  389. Find the Difference.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.03.2024.
//

class FindTheDifferenceClass {
    func findTheDifference(_ s: String, _ t: String) -> Character {
        var result:UInt8 = 0
        for x in s.utf8 {
            result ^= UInt8(x)
        }
        for x in t.utf8 {
            result ^= UInt8(x)
        }
        return Character(UnicodeScalar(result))
    }
}
