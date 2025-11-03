//
//  1. Two Sum.swift
//  Algorithm
//
//  Created by 이현호 on 11/3/25.
//

import Foundation

/*
 1. 두 개의 합
 
 정수 배열 nums 과 정수가 주어지면 두 숫자의 인덱스를 target 반환하여 두 숫자의 합이 target이 되도록 합니다.
 
 각 입력에 대해 정확히 하나의 솔루션이 있다고 가정할 수 있으며, 동일한 요소를 두 번 사용할 수 없습니다.
 
 답변은 어떤 순서로든 제출할 수 있습니다.
 
 
 예 1:
 
 입력: nums = [2,7,11,15], target = 9
 출력: [0,1]
 설명: nums[0] + nums[1] == 9이므로 [0, 1]을 반환합니다.
 
 예 2:
 
 입력: nums = [3,2,4], target = 6
 출력: [1,2]
 
 예 3:
 
 입력: nums = [3,3], target = 6
 출력: [0,1]
 
 
 제약 조건:
 
 2 <= nums.length <= 104
 -109 <= nums[i] <= 109
 -109 <= target <= 109
 유효한 답변은 하나뿐입니다.
 */

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
