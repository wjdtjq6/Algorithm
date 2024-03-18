func solution(_ n:Int) -> String {
    var answer: String = ""
    for i in 1...n {
        if i == 1 {
            answer.append("수")
        }
        else if i % 2 == 0 {
            answer.append("박")
        }
        else {
            answer.append("수")
        }
    }
    return answer
}
