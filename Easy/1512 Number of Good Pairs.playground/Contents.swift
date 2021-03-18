import UIKit

//Runtime: 4 ms, faster than 90.28% of Swift online submissions for Number of Good Pairs.
//Memory Usage: 14.1 MB, less than 58.33% of Swift online submissions for Number of Good Pairs.

func numIdenticalPairs(_ nums: [Int]) -> Int {
    var result = 0
    for i in 0..<nums.count {
        let a = nums[i]
        for j in (i+1)..<nums.count {
            let b = nums[j]
            result += a == b ? 1 : 0
        }
    }
    return result
}

numIdenticalPairs([1,2,3,1,1,3]) // -> 4
