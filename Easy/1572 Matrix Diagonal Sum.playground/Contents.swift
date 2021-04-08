import UIKit

/*:
 Given a square matrix mat, return the sum of the matrix diagonals.

 Only include the sum of all the elements on the primary diagonal and all the elements on the secondary diagonal that are not part of the primary diagonal.

  

 Example 1:


 Input: mat = [[1,2,3],
               [4,5,6],
               [7,8,9]]
 Output: 25
 Explanation: Diagonals sum: 1 + 5 + 9 + 3 + 7 = 25
 Notice that element mat[1][1] = 5 is counted only once.
 Example 2:

 Input: mat = [[1,1,1,1],
               [1,1,1,1],
               [1,1,1,1],
               [1,1,1,1]]
 Output: 8
 
 */

//Runtime: 96 ms, faster than 62.50% of Swift online submissions for Matrix Diagonal Sum.
//Memory Usage: 14 MB, less than 89.77% of Swift online submissions for Matrix Diagonal Sum.

func diagonalSumA(_ mat: [[Int]]) -> Int {
    var leftPivot = 0
    var rightPivot = mat.count - 1
    var result = 0
    
    for indexRow in 0 ..< mat.count {
            
        if leftPivot == rightPivot {
            result += mat[indexRow][rightPivot]
        } else {
            result += mat[indexRow][leftPivot]
            result += mat[indexRow][rightPivot]
        }
            
            
            rightPivot -= 1
            leftPivot += 1
        
    }
    return result
    
}

//Runtime: 96 ms, faster than 62.50% of Swift online submissions for Matrix Diagonal Sum.
//Memory Usage: 13.9 MB, less than 98.86% of Swift online submissions for Matrix Diagonal Sum.

func diagonalSum(_ mat: [[Int]]) -> Int {
        var maxRow = mat.count ?? 0
        var times = maxRow % 2 == 0 ? (maxRow - 1) : maxRow
        var p = 0
        var p1 = maxRow - 1
        
        var total = 0
        
        for i in 0...times/2 {
            guard p != p1 else {
                total += mat[i][p]
                return total
            }
            
            total += mat[i][p]
            total += mat[i][p1]
            total += mat[p1][p]
            total += mat[p][p1]
            p1 -= 1
            p += 1
            
        }
        return total
    }
