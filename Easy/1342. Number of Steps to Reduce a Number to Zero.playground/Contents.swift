// MARK: 1342. Number of Steps to Reduce a Number to Zero

/// Runtime: 0 ms, faster than 100.00% of Swift online submissions for Number of Steps to Reduce a Number to Zero.
/// Memory Usage: 13.8 MB, less than 66.93% of Swift online submissions for Number of Steps to Reduce a Number to Zero.

func numberOfSteps (_ num: Int) -> Int {
    var num = num {
        didSet {
            numberOfSteps += 1
        }
    }
    var numberOfSteps = 0
    while num >= 1 {
        if num % 2 != 0 {
            num -= 1
        }
        if num == 0 {
            return numberOfSteps
        }
        num = num / 2
    }

    return numberOfSteps
}
