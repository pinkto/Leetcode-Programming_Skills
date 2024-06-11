//
//  21. Merge Two Sorted Lists Test.swift
//  ProgrammingSkillsTests
//
//  Created by Anna Boldyreva on 11.06.2024.
//

import Foundation
import XCTest

@testable import ProgrammingSkills

final class MergeTwoLists: XCTestCase {
    func testMergeTwoLists() {
        let solution = MergeTwoListsClass()
        
        let list1 = arrayToList([1, 2, 4])
        let list2 = arrayToList([1, 3, 4])
        let expectedOutput1 = [1,1,2,3,4,4]
        
        let result1 = solution.mergeTwoLists(list1, list2)
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
