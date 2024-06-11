//
//  43. Multiply Strings.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.06.2024.
//

class MultiplyClass {
    func multiply(_ num1: String, _ num2: String) -> String {
        let len1 = num1.count
        let len2 = num2.count
        let num1Chars = Array(num1)
        let num2Chars = Array(num2)
        var result = Array(repeating: 0, count: len1 + len2)

        for i in (0..<len1).reversed() {
            for j in (0..<len2).reversed() {
                let n1 = Int(String(num1Chars[i]))!
                let n2 = Int(String(num2Chars[j]))!
                let sum = n1 * n2 + result[i + j + 1]

                result[i + j + 1] = sum % 10
                result[i + j] += sum / 10
            }
        }

        // Преобразуем массив результатов в строку, игнорируя ведущие нули
        var resultString = ""
        var leadingZero = true
        for num in result {
            if !(num == 0 && leadingZero) {
                resultString.append(String(num))
                leadingZero = false
            }
        }

        return resultString.isEmpty ? "0" : resultString
    }
}
