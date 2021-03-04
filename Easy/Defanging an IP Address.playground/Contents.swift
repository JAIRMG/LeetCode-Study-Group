import UIKit

/*:
 Given a valid (IPv4) IP address, return a defanged version of that IP address.

 A defanged IP address replaces every period "." with "[.]".

  

 Example 1:

 Input: address = "1.1.1.1"
 Output: "1[.]1[.]1[.]1"
 
 */


//Runtime: 4 ms, faster than 63.55% of Swift online submissions for Defanging an IP Address.
//Memory Usage: 15.7 MB, less than 40.89% of Swift online submissions for Defanging an IP Address.
func defangIPaddr(_ address: String) -> String {
    return address.replacingOccurrences(of: ".", with: "[.]")
}


defangIPaddr("1.1.1.1")





//Runtime: 0 ms, faster than 100.00% of Swift online submissions for Defanging an IP Address.
//Memory Usage: 14 MB, less than 91.63% of Swift online submissions for Defanging an IP Address.
class Solution {
    static let replacement = "[.]"
    func defangIPaddrWithForLoop(_ address: String) -> String {
        var result = ""
        address.forEach { char in
            var value = String(char)
            if value == "." {
                value = Self.replacement
            }
            result.append(value)
        }
        return result
    }
}
print(Solution().defangIPaddrWithForLoop("1.1.1.1"))

