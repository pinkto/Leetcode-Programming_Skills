//
//  206. Reverse Linked List Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class ReverseList: XCTestCase {
    func testReverseList() {
        let solution = ReverseListClass()

        let input1 = [1,2,3,4,5]
        let expectedOutput1 = [5,4,3,2,1]

        let result1 = solution.reverseList(arrayToList(input1))
        XCTAssertEqual(listToArray(result1), expectedOutput1)
    }
    
    func arrayToList(_ array: [Int]) -> ListNode? {
        let dummy = ListNode(0)
        var current = dummy
        for val in array {
            current.next = ListNode(val)
            current = current.next!
        }
        return dummy.next
    }

    func listToArray(_ list: ListNode?) -> [Int] {
        var array: [Int] = []
        var current = list
        while current != nil {
            array.append(current!.val)
            current = current?.next
        }
        return array
    }
}
