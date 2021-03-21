// MARK: 1281. Subtract the Product and Sum of Digits of an Integer

/// https://leetcode.com/problems/subtract-the-product-and-sum-of-digits-of-an-integer/
/// Runtime: 8 ms, faster than 46.25% of Swift online submissions for Subtract the Product and Sum of Digits of an Integer.
/// Runtime: 0 ms, faster than 100.00% of Swift online submissions for Subtract the Product and Sum of Digits of an Integer.
/// Memory Usage: 13.8 MB, less than 78.75% of Swift online submissions for Subtract the Product and Sum of Digits of an

func subtractProductAndSum(_ n: Int) -> Int {
        var totalSum = 0
        var totalMult = 1

        for i in String(describing: n) {
            let value = Int(String(i)) ?? 1
            totalSum  += value
            totalMult *= value
        }

        return totalMult - totalSum
    }
