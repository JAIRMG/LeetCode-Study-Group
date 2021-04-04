import UIKit

/*
 
 1450. Number of Students Doing Homework at a Given Time
 Easy

 355

 89

 Add to List

 Share
 Given two integer arrays startTime and endTime and given an integer queryTime.

 The ith student started doing their homework at the time startTime[i] and finished it at time endTime[i].

 Return the number of students doing their homework at time queryTime. More formally, return the number of students where queryTime lays in the interval [startTime[i], endTime[i]] inclusive.

  

 Example 1:

 Input: startTime = [1,2,3], endTime = [3,2,7], queryTime = 4
 Output: 1
 Explanation: We have 3 students where:
 The first student started doing homework at time 1 and finished at time 3 and wasn't doing anything at time 4.
 The second student started doing homework at time 2 and finished at time 2 and also wasn't doing anything at time 4.
 The third student started doing homework at time 3 and finished at time 7 and was the only student doing homework at time 4.
 Example 2:

 Input: startTime = [4], endTime = [4], queryTime = 4
 Output: 1
 Explanation: The only student was doing their homework at the queryTime.
 Example 3:

 Input: startTime = [4], endTime = [4], queryTime = 5
 Output: 0
 Example 4:

 Input: startTime = [1,1,1,1], endTime = [1,3,2,4], queryTime = 7
 Output: 0
 Example 5:

 Input: startTime = [9,8,7,6,5,4,3,2,1], endTime = [10,10,10,10,10,10,10,10,10], queryTime = 5
 Output: 5
 
 */

//
//Runtime: 12 ms, faster than 43.14% of Swift online submissions for Number of Students Doing Homework at a Given Time.
//Memory Usage: 14.1 MB, less than 39.22% of Swift online submissions for Number of Students Doing Homework at a Given Time.


func busyStudent(_ startTime: [Int], _ endTime: [Int], _ queryTime: Int) -> Int {
    var busyMaybe = 0
    
    for time in startTime {
        if time <= queryTime {
            busyMaybe += 1
        }
    }
    
    
    for time in endTime {
        if time < queryTime {
            busyMaybe -= 1
        }
    }

    return busyMaybe
}

busyStudent([9,8,7,6,5,4,3,2,1], [10,10,10,10,10,10,10,10,10], 5) // -> 5
