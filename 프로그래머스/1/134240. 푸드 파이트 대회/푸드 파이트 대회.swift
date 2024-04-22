import Foundation

func solution(_ food:[Int]) -> String {
    var answer: [Int] = []
    var startOne: Int = 1

    for i in 1..<food.count {
        var iteration: Int = food[i] / 2

        for j in 0..<iteration {
            answer.append(startOne)
        }
        startOne += 1
    }
    answer.append(0)
    
    for i in (1..<food.count).reversed() {
        var iteration: Int = food[i] / 2
        startOne -= 1

        for j in (0..<iteration).reversed() {
            answer.append(startOne)
        }
    }
    // print(answer)
    // print(answer.map { String($0)})
    // print(answer.map { String($0) }.joined(separator: ""))
    return answer.map { String($0) }.joined(separator: "")
}
