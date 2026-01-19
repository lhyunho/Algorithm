//
//  의상.swift
//  Algorithm
//
//  Created by 이현호 on 1/19/26.
//

import Foundation

// 의상 - https://school.programmers.co.kr/learn/courses/30/lessons/42578

func solution(_ clothes:[[String]]) -> Int {
    var dict: [String: Int] = [:]
    clothes.forEach { value in
        dict[value[1], default: 0] += 1
    }
    var result: Int = 1
    dict.values.forEach { count in
        result *= count+1
    }
    return result-1
}
