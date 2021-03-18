import UIKit

/*
 
 Given the array nums, for each nums[i] find out how many numbers in the array are smaller than it. That is, for each nums[i] you have to count the number of valid j's such that j != i and nums[j] < nums[i].

 Return the answer in an array.

  

 Example 1:

 Input: nums = [8,1,2,2,3]
 Output: [4,0,1,1,3]
 Explanation:
 For nums[0]=8 there exist four smaller numbers than it (1, 2, 2 and 3).
 For nums[1]=1 does not exist any smaller number than it.
 For nums[2]=2 there exist one smaller number than it (1).
 For nums[3]=2 there exist one smaller number than it (1).
 For nums[4]=3 there exist three smaller numbers than it (1, 2 and 2).
 
 */


//Runtime: 92 ms, faster than 60.37% of Swift online submissions for How Many Numbers Are Smaller Than the Current Number.
//Memory Usage: 14.2 MB, less than 49.39% of Swift online submissions for How Many Numbers Are Smaller Than the Current Number.
func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    var result = [Int](repeating: 0, count: nums.count)
    
    for i in 0..<nums.count {
        for j in 0..<nums.count where i != j {
            if nums[i] > nums[j] {
                result[i] += 1
            }
        }
    }
    
    return result
}

smallerNumbersThanCurrent([8,1,2,2,3]) // -> [4, 0, 1, 1, 3]
