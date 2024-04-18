import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var arr: [Int] = []
    for i in 0..<numbers.count {
        for j in 0..<numbers.count {
            if i < j {
                arr.append(numbers[i] + numbers[j])
            }
        }
    }
    var result1 = Set(arr)
    var result2 = result1.sorted()
    return [Int](result2)
}