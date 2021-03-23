// MARK: 1370. Increasing Decreasing String
/// https://leetcode.com/problems/increasing-decreasing-string/
///Runtime: 348 ms, faster than 16.67% of Swift online submissions for Increasing Decreasing String.
///Memory Usage: 14.5 MB, less than 94.44% of Swift online submissions for Increasing Decreasing String.

func sortString(_ s: String) -> String {
        var sArray = Array(s).sorted()
        var lastCharacter: Character?
        var result = [Character]()

        var pos = 0 {
            didSet {
                if pos >= sArray.count {
                    smallestActive = false
                    pos = sArray.count - 1
                } else if pos < 0 {
                    smallestActive = true
                    pos = 0
                }
            }
        }
        var
        smallestActive = true {
            didSet {
               lastCharacter = nil
            }
        }

        while !sArray.isEmpty {

            let value = sArray[pos]

            if value != lastCharacter  {
                lastCharacter = value
                result.append(value)
                sArray.remove(at: pos)

                if smallestActive, pos != sArray.count {
                    continue
                }
            }

            pos += smallestActive ? 1 : -1

        }

        return String(result)

    }
