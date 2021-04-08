import UIKit

/*
 
 1689. Partitioning Into Minimum Number Of Deci-Binary Numbers
 Medium

 168

 161

 Add to List

 Share
 A decimal number is called deci-binary if each of its digits is either 0 or 1 without any leading zeros. For example, 101 and 1100 are deci-binary, while 112 and 3001 are not.

 Given a string n that represents a positive decimal integer, return the minimum number of positive deci-binary numbers needed so that they sum up to n.

  

 Example 1:

 Input: n = "32"
 Output: 3
 Explanation: 10 + 11 + 11 = 32
 Example 2:

 Input: n = "82734"
 Output: 8
 Example 3:

 Input: n = "27346209830709182346"
 Output: 9
 
 
 */


//Runtime: 512 ms, faster than 41.94% of Swift online submissions for Partitioning Into Minimum Number Of Deci-Binary Numbers.
//Memory Usage: 16.5 MB, less than 20.97% of Swift online submissions for Partitioning Into Minimum Number Of Deci-Binary Numbers.

func minPartitions(_ n: String) -> Int {
    var array = [Int]()
    
    for number in n {
        array.append(Int(String(number))!)
    }
    return array.max()!
}

minPartitions("82734") // -> 8

minPartitions("32") // -> 3
func minPartitionsB(_ n: String) -> Int {
      var max = 9
      while max > 0 {
          if n.contains(String(max)) {
              return max
          }
         max -= 1
     }
    return max
}
