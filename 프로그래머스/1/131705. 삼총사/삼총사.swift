import Foundation

func solution(_ number:[Int]) -> Int {
    var count = 0
    for i in 0..<number.count {
        for j in 1..<number.count {
            for k in 2..<number.count {
                if i < j && i < k && j < k {
                    if number[i] + number[j] + number[k] == 0 {
                        count += 1
                    }
                }
            }
        }
    }
    return count
}
