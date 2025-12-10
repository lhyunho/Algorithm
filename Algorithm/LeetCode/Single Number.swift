//
//  Single Number.swift
//  Algorithm
//
//  Created by 이현호 on 12/10/25.
//

import Foundation

// Problem: [LeetCode - Single Number](https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/549/)

func singleNumber(_ nums: [Int]) -> Int {
    var result = nums
    for i in nums {
        if nums.filter({ $0 == i }).count > 1 {
            result.removeAll { $0 == i }
        }
    }
    return result.first!
}
