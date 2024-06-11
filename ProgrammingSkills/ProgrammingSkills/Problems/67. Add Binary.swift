//
//  67. Add Binary.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.06.2024.
//

class AddBinaryClass {
    func addBinary(_ a: String, _ b: String) -> String {
        var result = ""
        var carry = 0
        let aChars = Array(a)
        let bChars = Array(b)
        var i = aChars.count - 1
        var j = bChars.count - 1

        while i >= 0 || j >= 0 || carry != 0 {
            let aBit = i >= 0 ? Int(String(aChars[i]))! : 0
            let bBit = j >= 0 ? Int(String(bChars[j]))! : 0
            let sum = aBit + bBit + carry
            result = "\(sum % 2)" + result
            carry = sum / 2
            i -= 1
            j -= 1
        }

        return result
    }
}
