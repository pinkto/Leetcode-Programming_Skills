//
//  1768. Merge Strings Alternately.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.03.2024.
//

class MergeStringsAlternately {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var i = 0 , j = 0
        var resultArray: Array<Character> = []

        let array1 = Array(word1)
        let array2 = Array(word2)

        while i < word1.count && j < word2.count {
            resultArray.append(array1[i])
            resultArray.append(array2[j])
            i += 1
            j += 1
        }

        while i < word1.count {
            resultArray.append(array1[i])
            i += 1
        }

        while j < word2.count {
            resultArray.append(array2[j])
            j += 1
        }

        return String(resultArray)
    }
}
