//
//  Intersection of Two Arrays II.swift
//  Algorithm
//
//  Created by 이현호 on 12/15/25.
//

import Foundation

func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    var countMap = [Int: Int]()
    var result = [Int]()

    for num in nums1 {
        countMap[num, default: 0] += 1
    }

    for num in nums2 {
        if let count = countMap[num], count > 0 {
            result.append(num)
            countMap[num]! -= 1
        }
    }

    return result
}
