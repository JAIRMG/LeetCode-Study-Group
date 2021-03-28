import UIKit


//Runtime: 8 ms, faster than 28.00% of Swift online submissions for Create Target Array in the Given Order.
//Memory Usage: 13.9 MB, less than 91.00% of Swift online submissions for Create Target Array in the Given Order.

func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
    var result = [Int]()
    
    for i in 0 ..< nums.count {
        if result.isEmpty {
            result.append(nums[i])
            continue
        }
        
        if index[i] >= result.count {
            result.append(nums[i])
            
        } else {
            result.insert(nums[i], at: index[i])
        }
        
        
    }
    return result
}
