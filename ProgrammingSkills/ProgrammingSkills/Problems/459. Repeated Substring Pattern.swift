//
//  459. Repeated Substring Pattern.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.03.2024.
//

class RepeatedSubstringPatternClass {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        var text = s + s
        text.removeFirst()
        text.removeLast()
        return text.contains(s)
    }
}
