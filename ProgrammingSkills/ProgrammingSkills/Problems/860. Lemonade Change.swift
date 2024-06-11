//
//  860. Lemonade Change.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.06.2024.
//

class LemonadeChangeClass {
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var tensCount = 0
        var fivesCount = 0
        for bill in bills {
            switch bill {
            case 5:
                fivesCount += 1
            case 10:
                fivesCount -= 1
                tensCount += 1
            case 20:
                if tensCount > 0 {
                    tensCount -= 1
                    fivesCount -= 1
                } else {
                    fivesCount -= 3
                }
            default: break
            }
            if fivesCount < 0 { return false }
        }
        return true
    }
}
