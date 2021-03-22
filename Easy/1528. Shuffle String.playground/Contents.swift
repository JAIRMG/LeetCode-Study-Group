// MARK: 1528. Shuffle String
/// https://leetcode.com/problems/shuffle-string/

/// Runtime: 32 ms, faster than 91.13% of Swift online submissions for Shuffle String.
/// Memory Usage: 14.6 MB, less than 54.84% of Swift online submissions for Shuffle String.

func restoreString(_ s: String, _ indices: [Int]) -> String {
    let sArray = Array(s)
    var result = [Character](repeating: "x", count: indices.count)
    for i in 0..<indices.count {
        let pos = indices[i]
        let value = sArray[i]
        result[pos] = value
    }
    return String(result)
}
