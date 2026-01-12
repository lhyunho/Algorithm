//
//  Plus One.swift
//  Algorithm
//
//  Created by 이현호 on 1/12/26.
//

import Foundation

// Problem: [LeetCode - Plus One](https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/559/)

func plusOne(_ digits: [Int]) -> [Int] {
    
    var result = digits
    
    // 뒤에서부터 순회
    // to와 through의 차이점은 마지막을 포함하냐 안하냐
    // to - 포함X, through - 포함O
    for i in stride(from: result.count - 1, through: 0, by: -1) {
        // 9가 아니면 +1 하고 바로 리턴
        if result[i] < 9 {
            result[i] += 1
            return result
        }
        // 9면 0으로 만들고 계속 (자리올림)
        result[i] = 0
    }
    
    // 여기까지 왔다는 건 모든 자리가 9였다는 의미
    // [9,9,9] -> [1,0,0,0]
    result.insert(1, at: 0)
    return result
}
