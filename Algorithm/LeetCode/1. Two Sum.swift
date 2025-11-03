//
//  1. Two Sum.swift
//  Algorithm
//
//  Created by 이현호 on 11/3/25.
//

import Foundation

// Problem: [LeetCode #1 - Two Sum](https://leetcode.com/problems/two-sum)

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result: [Int] = []
    for (index, num) in nums.enumerated() {
        if let keyIndex = nums.firstIndex(of: (target - num)) {
            if keyIndex != index {
                result.append(contentsOf: [index, keyIndex])
                return result
            }
        }
    }
    return result
}
