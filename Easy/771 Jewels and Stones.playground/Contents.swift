import UIKit

//Runtime: 4 ms, faster than 84.27% of Swift online submissions for Jewels and Stones.
//Memory Usage: 14.3 MB, less than 72.47% of Swift online submissions for Jewels and Stones.

func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
    var result = 0
    
    jewels.forEach { character in
        result += stones.filter { $0 == character }.count
    }
    
    return result
}

numJewelsInStones("aA", "aAAbbbb") // -> 3
