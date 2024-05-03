import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var start = 0
    var end = 0
    var result = 0
    for i in 0..<section.count {
        if section[i] > end {
            result += 1
            start = section[i]
            end = start + m - 1
        }
    }
    return result
}