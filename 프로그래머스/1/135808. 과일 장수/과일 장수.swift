import Foundation

func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    let sortedScore = score.sorted(by: >)
    var i = 0
    var result = 0
    for _ in  0..<score.count / m {
        var arr:[Int] = []
        for _ in 0..<m {
            arr.append(sortedScore[i])
            i += 1
        } 
        let sortedArr = arr.sorted()
        result += sortedArr.min()! * m
    }
    return result
}