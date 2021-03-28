// MARK: 1678. Goal Parser Interpretation
/// https://leetcode.com/problems/goal-parser-interpretation/
/// Runtime: 4 ms, faster than 90.77% of Swift online submissions for Goal Parser Interpretation.
/// Memory Usage: 14.6 MB, less than 43.08% of Swift online submissions for Goal Parser Interpretation.

func interpret(_ command: String) -> String {
        var acommand = Array(command)
        var result: String = ""
        var count = 0
        while count < acommand.count {
            let character = acommand[count]
            var interpreted: String = "G"
            if character == "(" {
                count += 1
                let nextCharacter = acommand[count]
                if nextCharacter == "a" {
                    interpreted = "al"
                    count += 2
                } else {
                    interpreted = "o"
                }
            }
            count += 1
            result.append(interpreted)
        }

        return result
    }
