import UIKit


//Runtime: 32 ms, faster than 87.57% of Swift online submissions for Richest Customer Wealth.
//Memory Usage: 14.3 MB, less than 32.20% of Swift online submissions for Richest Customer Wealth.
func maximumWealth(_ accounts: [[Int]]) -> Int {
    let wealth = accounts.map { customerWealth in
        customerWealth.reduce(0, +)
    }
    
    return wealth.max() ?? 0
}

maximumWealth([[1,2,3],[3,2,1]]) // -> 6




//Runtime: 32 ms, faster than 87.57% of Swift online submissions for Richest Customer Wealth.
//Memory Usage: 14.4 MB, less than 9.89% of Swift online submissions for Richest Customer Wealth.
func maximumWealthB(_ accounts: [[Int]]) -> Int {
    var maxWealth = 0
    for column in 0 ..< accounts.count {
        var wealth = 0
        for row in 0 ..< accounts[column].count {
            wealth += accounts[column][row]
        }
        maxWealth = max(wealth, maxWealth)
    }
    return maxWealth
}

maximumWealthB([[1,2,3],[3,2,1]])
