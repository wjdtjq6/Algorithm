import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var answer = 0
    for i in left...right {
        var num = 0
        for j in 1...i {
            if i % j == 0 {
                num += 1
            }
        }
        if num % 2 == 0 {
            answer += i
        }
        else {
            answer -= i
        }
    }
    return answer
}