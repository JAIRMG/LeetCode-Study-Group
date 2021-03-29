import UIKit

/*
 
 1720. Decode XORed Array
 Easy

 195

 33

 Add to List

 Share
 There is a hidden integer array arr that consists of n non-negative integers.

 It was encoded into another integer array encoded of length n - 1, such that encoded[i] = arr[i] XOR arr[i + 1]. For example, if arr = [1,0,2,1], then encoded = [1,2,3].

 You are given the encoded array. You are also given an integer first, that is the first element of arr, i.e. arr[0].

 Return the original array arr. It can be proved that the answer exists and is unique.

  

 Example 1:

 Input: encoded = [1,2,3], first = 1
 Output: [1,0,2,1]
 Explanation: If arr = [1,0,2,1], then first = 1 and encoded = [1 XOR 0, 0 XOR 2, 2 XOR 1] = [1,2,3]
 
 */

//Runtime: 320 ms, faster than 17.05% of Swift online submissions for Decode XORed Array.
//Memory Usage: 15.5 MB, less than 20.45% of Swift online submissions for Decode XORed Array.


func decode(_ encoded: [Int], _ first: Int) -> [Int] {
    var result = [Int]()
    result.append(first)

    for index in 0 ..< encoded.count {
        result.append(encoded[index] ^ result[index])
    }
    return result
}

decode([1,2,3], 1) // -> [1, 0, 2, 1]
decode([6, 2, 7, 3], 4) // -> [4,2,0,7,4]


