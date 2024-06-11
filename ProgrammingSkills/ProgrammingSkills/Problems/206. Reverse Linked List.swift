//
//  206. Reverse Linked List.swift
//  ProgrammingSkills
//
//  Created by Anna Boldyreva on 11.06.2024.
//

class ReverseListClass {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var prev: ListNode? = nil
        var current = head
        while current != nil {
            let next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        return prev
    }
}
