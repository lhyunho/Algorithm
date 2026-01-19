//
//  자릿수더하기.swift
//  Algorithm
//
//  Created by 이현호 on 1/19/26.
//

import Foundation

// 자릿수 더하기 https://school.programmers.co.kr/learn/courses/30/lessons/12931?language=swift

func solution(_ n:Int) -> Int
{
    var answer:Int = 0

    answer = Array(String(n)).compactMap { Int(String($0)) }.reduce(0, +)
    
    return answer
}
