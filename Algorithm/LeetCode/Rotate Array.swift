//
//  Rotate Array.swift
//  Algorithm
//
//  Created by 이현호 on 12/9/25.
//

import Foundation

// Problem: [LeetCode - Rotate Array](https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/646/)

/*
 최초 풀이
 func rotate(_ nums: inout [Int], _ k: Int) {
 guard nums.count > 1 else { return }
 var queue: [Int] = []
 for _ in 0..<k {
 queue.append(nums.last!)
 nums.removeLast()
 nums.insert(queue.last!, at: 0)
 queue.removeAll()
 }
 }
 */

func rotate(_ nums: inout [Int], _ k: Int) {
    let n = nums.count
    let k = k % n
    nums.reverse()
    reverse(&nums, start: 0, end: k-1)
    reverse(&nums, start: k, end: n-1)
}

func reverse(_ nums: inout [Int], start: Int, end: Int) {
    var start = start
    var end = end
    while start < end {
        nums.swapAt(start, end)
        start += 1
        end -= 1
    }
}
