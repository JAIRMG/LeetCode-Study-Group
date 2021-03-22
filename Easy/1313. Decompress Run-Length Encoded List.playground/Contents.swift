// MARK: 1313. Decompress Run-Length Encoded List
/// https://leetcode.com/problems/decompress-run-length-encoded-list/
/// Runtime: 64 ms, faster than 26.60% of Swift online submissions for Decompress Run-Length Encoded List.
/// Memory Usage: 14.2 MB, less than 89.36% of Swift online submissions for Decompress Run-Length Encoded List.

func decompressRLElist(_ nums: [Int]) -> [Int] {
    var result = [Int]()

    for i in 0..<Int(nums.count/2) {
        let index = i * 2
        let freq = nums[index]
        let value = nums[index+1]
        result.append(contentsOf: [Int](repeating: value, count: freq))
    }

    return result
}
