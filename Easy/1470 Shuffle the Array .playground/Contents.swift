import UIKit


//Runtime: 36 ms, faster than 95.74% of Swift online submissions for Shuffle the Array.
//Memory Usage: 14.1 MB, less than 68.44% of Swift online submissions for Shuffle the Array.
func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
    let x = Array(nums[0 ..< n])
    let y = Array(nums[n ..< nums.count])
    
    var result = [Int]()
    
    for index in 0 ..< x.count {
        result.append(x[index])
        result.append(y[index])
    }
    return result
}

shuffle([2,5,1,3,4,7], 3) // -> [2,3,5,4,1,7]



//Runtime: 32 ms, faster than 99.29% of Swift online submissions for Shuffle the Array.
//Memory Usage: 14 MB, less than 68.44% of Swift online submissions for Shuffle the Array.
func shuffleB(_ nums: [Int], _ n: Int) -> [Int] {
    
    var result = [Int]()
    
    for index in 0 ..< n {
        result.append(nums[index])
        result.append(nums[index + n])
    }
    return result
}

shuffleB([2,5,1,3,4,7], 3) // -> [2,3,5,4,1,7]
