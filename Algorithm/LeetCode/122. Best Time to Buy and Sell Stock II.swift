//
//  122. Best Time to Buy and Sell Stock II.swift
//  Algorithm
//
//  Created by 이현호 on 12/8/25.
//

import Foundation

// Problem: [LeetCode #122 - Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/description/)

func maxProfit2(_ prices: [Int]) -> Int {
    var profit = 0
    for i in 1..<prices.count {
        if prices[i] > prices[i-1] {
            profit += prices[i] - prices[i-1]
        }
    }
    return profit
}
