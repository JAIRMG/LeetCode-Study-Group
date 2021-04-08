import UIKit

/*
 
 1464. Maximum Product of Two Elements in an Array
 Easy

 402

 80

 Add to List

 Share
 Given the array of integers nums, you will choose two different indices i and j of that array. Return the maximum value of (nums[i]-1)*(nums[j]-1).
  

 Example 1:

 Input: nums = [3,4,5,2]
 Output: 12
 Explanation: If you choose the indices i=1 and j=2 (indexed from 0), you will get the maximum value, that is, (nums[1]-1)*(nums[2]-1) = (4-1)*(5-1) = 3*4 = 12.
 Example 2:

 Input: nums = [1,5,4,5]
 Output: 16
 Explanation: Choosing the indices i=1 and j=3 (indexed from 0), you will get the maximum value of (5-1)*(5-1) = 16.
 Example 3:

 Input: nums = [3,7]
 Output: 12

 
 */

// Too slow due to the merge

//Runtime: 56 ms, faster than 25.00% of Swift online submissions for Maximum Product of Two Elements in an Array.
//Memory Usage: 14.2 MB, less than 37.50% of Swift online submissions for Maximum Product of Two Elements in an Array.

func maxProduct(_ nums: [Int]) -> Int {
    var sortedArray = nums.sorted()
    let a = sortedArray.removeLast()
    let b = sortedArray.removeLast()
    
    return (a - 1) * (b - 1)
    
}


//Runtime: 24 ms, faster than 89.29% of Swift online submissions for Maximum Product of Two Elements in an Array.
//Memory Usage: 14.1 MB, less than 46.43% of Swift online submissions for Maximum Product of Two Elements in an Array.

func maxProductB(_ nums: [Int]) -> Int {
    var i = -1
    var j = -1
    
    for index in 0 ..< nums.count {
        
        if i < 0 {
            i = index
            continue
        }
        
        if nums[index] > nums[i] {
            j = i
            i = index
        } else if j < 0 {
            j = index
        }
        
        else if nums[index] > nums[j] {
            j = index
        }
    }
    
    return (nums[i] - 1) * (nums[j] - 1)
    
}

maxProductB([1,5,4,5]) // -> 16

//
//Runtime: 24 ms, faster than 89.29% of Swift online submissions for Maximum Product of Two Elements in an Array.
//Memory Usage: 13.8 MB, less than 96.43% of Swift online submissions for Maximum Product of Two Elements in an Array.

func maxProductC(_ nums: [Int]) -> Int {
    var maxNumber = max(nums[0], nums[1])
    var preMax = min(nums[0], nums[1])
    
    for index in 2 ..< nums.count {
        if nums[index] > maxNumber {
            preMax = maxNumber
            maxNumber = nums[index]
        } else if nums[index] > preMax {
            preMax = nums[index]
        }
    }
    
    return (maxNumber - 1) * (preMax - 1)
}

maxProductC([1,5,4,5])
maxProductC([3,4,5,2])
maxProductC([3,7])
