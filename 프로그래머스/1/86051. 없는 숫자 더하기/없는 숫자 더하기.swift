import Foundation

func solution(_ numbers:[Int]) -> Int {
    var answer: Int = 0
    for i in 0...9 {
        if numbers.contains(i) == false {
            answer += i
        }
    }
    if numbers == [0,1,2,3,4,5,6,7,8,9] {
        return 0
    }
    return answer
}