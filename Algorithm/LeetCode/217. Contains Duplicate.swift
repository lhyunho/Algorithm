//
//  217. Contains Duplicate.swift
//  Algorithm
//
//  Created by 이현호 on 12/3/25.
//

import Foundation

// Problem: [LeetCode #217 - Contains Duplicate](https://leetcode.com/problems/contains-duplicate/description/)

func containsDuplicate(_ nums: [Int]) -> Bool {
    Set(nums).count != nums.count
}
