import Foundation

func solution(_ t: String, _ p: String) -> Int {
    var index1 = 0
    let index2 = p.count
    var answer = 0
    for i in 0..<t.count where index1 + index2 <= t.count {
        let start = t.index(t.startIndex, offsetBy: index1)
        let end = t.index(t.startIndex, offsetBy: index1 + index2)
        let result = String(t[start..<end])
        index1 += 1
        
        if result <= p {
            answer += 1
        }
    }
    return answer
}
