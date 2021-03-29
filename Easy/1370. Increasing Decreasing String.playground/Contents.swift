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


//Runtime: 308 ms, faster than 22.22% of Swift online submissions for Increasing Decreasing String.
//Memory Usage: 15.1 MB, less than 5.56% of Swift online submissions for Increasing Decreasing String.

func sortStringB(_ s: String) -> String {
        var sorted = Array(s).sorted()
        var result = ""
        
        while !sorted.isEmpty {
            
            var count = 0
            var smallest = String(sorted[0])
            result += String(sorted.removeFirst())
            
            while (sorted.count > count) && !sorted.isEmpty {
                if String(sorted[count]) > String(smallest) {
                    result += String(sorted.remove(at: count))
                    smallest = String(result.last!)
                } else {
                    count += 1
                }
            }
            
            guard !sorted.isEmpty else { return result }
            var countBackwards = sorted.count - 1
            
            var greatest = String(sorted[countBackwards])
            result += String(sorted.removeLast())
            countBackwards = countBackwards - 1
            
            while countBackwards > 0 && !sorted.isEmpty {
                if String(sorted[countBackwards]) < String(greatest) {
                    result += String(sorted.remove(at: countBackwards))
                    greatest = String(result.last!)
                    countBackwards = sorted.count - 1
                } else {
                    countBackwards -= 1
                }
            }
        }
        
        return result
        
    }
