import Foundation

func isPrime(_ num: Int) -> Bool {
    if num < 2 {
        return false
    }
    for i in 2..<num {
        if num % i == 0 {
            return false
        }
    }
    return true
}

func solution(_ nums:[Int]) -> Int {
    var answer = 0
    let count = nums.count
    for i in 0..<count {
        for j in (i+1)..<count {
            for k in (j+1)..<count {
                if isPrime(nums[i] + nums[j] + nums[k]) {
                    answer += 1
                }
            }
        }
    }
    return answer
}
