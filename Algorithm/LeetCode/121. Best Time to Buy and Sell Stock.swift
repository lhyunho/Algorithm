//
//  121. Best Time to Buy and Sell Stock.swift
//  Algorithm
//
//  Created by 이현호 on 11/17/25.
//

import Foundation

// Problem: [LeetCode #121 - Best Time to Buy and Sell Stock](https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/)

func maxProfit(_ prices: [Int]) -> Int {
    var minPriceSoFar = prices[0]
    var maxProfit = 0
    
    for price in prices {
        if minPriceSoFar > price {
            minPriceSoFar = price
        }
        if minPriceSoFar < price && price - minPriceSoFar > maxProfit {
            maxProfit = price - minPriceSoFar
        }
    }
    
    return maxProfit
}
