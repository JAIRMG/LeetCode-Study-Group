import UIKit

func runningSum(_ nums: [Int]) -> [Int] {
    var total = 0
    var result = [Int]()
    for number in nums {
        total += number
        result.append(total)
    }
    return result
}

//Runtime: 16 ms, faster than 88.45% of Swift online submissions for Running Sum of 1d Array.
//Memory Usage: 13.9 MB, less than 82.06% of Swift online submissions for Running Sum of 1d Array.

runningSum([1, 2, 3, 4])


func runningSumUsingMap(_ nums: [Int]) -> [Int] {
    var total = 0
    return nums.map { value -> Int in
        total += value
        return total
    }
}

runningSumUsingMap([1, 2, 3, 4])

//Runtime: 12 ms, faster than 99.38% of Swift online submissions for Running Sum of 1d Array.
//Memory Usage: 14.1 MB, less than 51.96% of Swift online submissions for Running Sum of 1d Array.
