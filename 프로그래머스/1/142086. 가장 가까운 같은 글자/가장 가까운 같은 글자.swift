import Foundation

func solution(_ s:String) -> [Int] {
    var result: [Int] = []
    var dict: [Character: Int] = [:]
    var chars: [Character] = Array(s)
    for i in 0..<chars.count {
        if let index = dict[chars[i]] {
            result.append(i - index)
        } else {
            result.append(-1)
        }
        dict[chars[i]] = i
    }
    return result
}
