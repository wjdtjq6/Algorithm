import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer:[Int] = []
    for i in commands {
        var newArray = Array(array[i[0]-1...i[1]-1])
        newArray.sort()
        answer.append(newArray[i[2]-1])
    }
    return answer
}
