import UIKit

/*
 
 1769. Minimum Number of Operations to Move All Balls to Each Box
 Medium

 286

 19

 Add to List

 Share
 You have n boxes. You are given a binary string boxes of length n, where boxes[i] is '0' if the ith box is empty, and '1' if it contains one ball.

 In one operation, you can move one ball from a box to an adjacent box. Box i is adjacent to box j if abs(i - j) == 1. Note that after doing so, there may be more than one ball in some boxes.

 Return an array answer of size n, where answer[i] is the minimum number of operations needed to move all the balls to the ith box.

 Each answer[i] is calculated considering the initial state of the boxes.

  

 Example 1:

 Input: boxes = "110"
 Output: [1,1,3]
 Explanation: The answer for each box is as follows:
 1) First box: you will have to move one ball from the second box to the first box in one operation.
 2) Second box: you will have to move one ball from the first box to the second box in one operation.
 3) Third box: you will have to move one ball from the first box to the third box in two operations, and move one ball from the second box to the third box in one operation.
 Example 2:

 Input: boxes = "001011"
 Output: [11,8,5,4,3,4]
 
 
 */

//Runtime: 3232 ms, faster than 21.59% of Swift online submissions for Minimum Number of Operations to Move All Balls to Each Box.
//Memory Usage: 15 MB, less than 37.41% of Swift online submissions for Minimum Number of Operations to Move All Balls to Each Box.

func minOperations(_ boxes: String) -> [Int] {
    
    var indexOfBalls = [Int]()
    var result = [Int](repeating: -1, count: boxes.count)
    
    boxes.enumerated().forEach { index, value in
        if value == "1" {
            indexOfBalls.append(index)
        }
    }
    
    boxes.enumerated().forEach { index, value in
        var sum = 0
        for ball in indexOfBalls {
            sum += abs(ball - index)
        }
        result[index] = sum
    }
    return result
}

minOperations("001011") // -> [11,8,5,4,3,4]
