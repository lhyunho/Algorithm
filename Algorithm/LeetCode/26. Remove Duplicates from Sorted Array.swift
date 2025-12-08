//
//  26. Remove Duplicates from Sorted Array.swift
//  Algorithm
//
//  Created by 이현호 on 12/8/25.
//

import Foundation

// Problem: [LeetCode #26 - Remove Duplicates from Sorted Array](https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/)

func removeDuplicates(_ nums: inout [Int]) -> Int {
    var resultIndex = 1
    
    for i in 1..<nums.count {
        if nums[i] != nums[i-1] {
            nums[resultIndex] = nums[i]
            resultIndex += 1
        }
    }
    return resultIndex
}
