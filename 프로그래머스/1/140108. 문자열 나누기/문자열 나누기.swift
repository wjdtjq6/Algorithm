func solution(_ s:String) -> Int {
    var count = 0
    var s = Array(s)
    while !s.isEmpty {
        let x = s[0]
        var xCount = 0
        var notXCount = 0
        for i in 0..<s.count {
            if s[i] == x {
                xCount += 1
            } else {
                notXCount += 1
            }
            if xCount == notXCount {
                s.removeFirst(i+1)
                count += 1
                break
            }
        }
        if xCount != notXCount {
            s.removeAll()
            count += 1
        }
    }
    return count
}
