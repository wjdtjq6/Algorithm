import Foundation
func solution(_ n:Int) -> Int {
    var quotient: Int = n
    var arr: [Int] = []
    var answer: Int = 0
    //n이 3이하 일때
    if n == 3 {
        answer = 1
        return answer
    }
    else if n == 2 {
        answer = 2
        return answer
    }
    else if n == 1{
        answer = 1
        return answer
    }
    else {
        for i in 0..<n where quotient > 0{
        arr.append(quotient % 3)
        quotient /= 3
        }
        print(arr)
        for j in 0..<arr.count {
           answer += arr[j] * Int(pow(3.0,Double(arr.count-1-j)))
        }
        return answer
        }
    
}