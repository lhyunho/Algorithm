//
//  2. Add Two Numbers.swift
//  Algorithm
//
//  Created by 이현호 on 11/3/25.
//

import Foundation

// Problem: [LeetCode #2 - Add Two Numbers](https://leetcode.com/problems/add-two-numbers)

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var p = l1
    var q = l2
    var carry = 0
    
    let dummy = ListNode(0)
    var cur: ListNode? = dummy
    
    while p != nil || q != nil || carry != 0 {
        let x = p?.val ?? 0
        let y = q?.val ?? 0
        let sum = x + y + carry
        
        carry = sum / 10
        cur?.next = ListNode(sum % 10)
        cur = cur?.next
        
        p = p?.next
        q = q?.next
    }
    
    return dummy.next
}
