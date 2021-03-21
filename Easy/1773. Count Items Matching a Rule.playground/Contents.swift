import UIKit

// MARK: 1773. Count Items Matching a Rule

/// https://leetcode.com/problems/count-items-matching-a-rule/

/// Runtime: 392 ms, faster than 100.00% of Swift online submissions for Count Items Matching a Rule.
/// Memory Usage: 16.3 MB, less than 100.00% of Swift online submissions for Count Items Matching a Rule.


func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
    var result  = 0
    let position = ruleKey == "type"
        ? 0
        : ruleKey == "color"
        ? 1
        : 2

    for item in items {
        result += item[position] == ruleValue ? 1 : 0
    }

    return result
}

