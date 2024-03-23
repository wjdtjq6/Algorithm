func solution(_ s:String) -> String {
    var arr: [Character] = []
    arr = s.sorted(by : >)
    return String(arr)
}