import UIKit

//1678. Goal Parser Interpretation
/*
 You own a Goal Parser that can interpret a string command. The command consists of an alphabet of "G", "()" and/or "(al)" in some order. The Goal Parser will interpret "G" as the string "G", "()" as the string "o", and "(al)" as the string "al". The interpreted strings are then concatenated in the original order.

 Given the string command, return the Goal Parser's interpretation of command.

  

 Example 1:

 Input: command = "G()(al)"
 Output: "Goal"
 Explanation: The Goal Parser interprets the command as follows:
 G -> G
 () -> o
 (al) -> al
 The final concatenated result is "Goal".
 */



//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Goal Parser Interpretation.
//Memory Usage: 15.9 MB, less than 12.31% of Swift online submissions for Goal Parser Interpretation.
func interpret(_ command: String) -> String {

    var result = ""

    result += command.replacingOccurrences(of: "()", with: "o")
    result = result.replacingOccurrences(of: "(al)", with: "al")
    
    return result
}

interpret("G()()()()(al)") // -> "Gooooal"

interpret("G()(al)") // -> "Goal"
interpret("(al)G(al)()()G") // -> "alGalooG"
