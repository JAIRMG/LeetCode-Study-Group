import UIKit

/*
 
 Given two arrays of integers nums and index. Your task is to create target array under the following rules:

 Initially target array is empty.
 From left to right read nums[i] and index[i], insert at index index[i] the value nums[i] in target array.
 Repeat the previous step until there are no elements to read in nums and index.
 Return the target array.

 It is guaranteed that the insertion operations will be valid.

  

 Example 1:

 Input: nums = [0,1,2,3,4], index = [0,1,2,2,1]
 Output: [0,4,1,3,2]
 Explanation:
 nums       index     target
 0            0        [0]
 1            1        [0,1]
 2            2        [0,1,2]
 3            2        [0,1,3,2]
 4            1        [0,4,1,3,2]
 
 */


//Runtime: 8 ms, faster than 28.00% of Swift online submissions for Create Target Array in the Given Order.
//Memory Usage: 13.9 MB, less than 91.00% of Swift online submissions for Create Target Array in the Given Order.

func createTargetArray(_ nums: [Int], _ index: [Int]) -> [Int] {
    var result = [Int]()
    
    for i in 0..<nums.count {
        let value = nums[i]
        let pos = index[i]
        result.insert(value, at: pos)
    }
    
    return result
}
