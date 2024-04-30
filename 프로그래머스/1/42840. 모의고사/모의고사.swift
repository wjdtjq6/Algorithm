import Foundation

func solution(_ answers:[Int]) -> [Int] {
    let num1: [Int] = [1,2,3,4,5]
    let num2: [Int] = [2,1,2,3,2,4,2,5]
    let num3: [Int] = [3,3,1,1,2,2,4,4,5,5]
    var result1 = 0
    var result2 = 0
    var result3 = 0

    for i in 0..<answers.count {
        if num1[i % num1.count] == answers[i] {
            result1 += 1
        }
        if num2[i % num2.count] == answers[i] {
            result2 += 1
        } 
        if num3[i % num3.count] == answers[i] {
            result3 += 1
        } 
    }

    let maxScore = max(result1, result2, result3)
    var result: [Int] = []
    if result1 == maxScore { result.append(1) }
    if result2 == maxScore { result.append(2) }
    if result3 == maxScore { result.append(3) }

    return result
}
