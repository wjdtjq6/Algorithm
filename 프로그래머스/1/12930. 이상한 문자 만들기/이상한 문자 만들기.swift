func solution(_ s:String) -> String {
    var str: String = ""
    var index = 0
    for i in s {
        if i == " " {
            index = -1
        }
        if index % 2 == 0 {
            str += i.uppercased()
        } else {
            str += i.lowercased()
        }
        index += 1
    }
    return str
}