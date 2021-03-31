// MARK: 1476. Subrectangle Queries
/// https://leetcode.com/problems/subrectangle-queries/submissions/

/// Runtime: 444 ms, faster than 71.21% of Swift online submissions for Subrectangle Queries.
/// Memory Usage: 15.1 MB, less than 62.12% of Swift online submissions for Subrectangle Queries.

class SubrectangleQueries {
    var rectangle: [[Int]]
    init(_ rectangle: [[Int]]) {
        self.rectangle = rectangle
    }

    func updateSubrectangle(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int, _ newValue: Int) {
        for i in row1...row2 {
            for j in col1...col2 {
                rectangle[i][j] = newValue
            }
        }
    }

    func getValue(_ row: Int, _ col: Int) -> Int {
        rectangle[row][col]
    }
}
