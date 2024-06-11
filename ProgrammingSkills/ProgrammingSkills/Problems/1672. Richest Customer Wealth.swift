//
//  1672. Richest Customer Wealth.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation

class MaxWealthClass {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        var result = [Int]()

        accounts.forEach { result.append($0.reduce(0, +)) }

        return result.max() ?? 0
    }
}
