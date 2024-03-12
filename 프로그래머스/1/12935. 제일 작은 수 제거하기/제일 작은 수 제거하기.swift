func solution(_ arr:[Int]) -> [Int] {
    var arr: [Int] = arr
    let trash = arr.sorted().first
    var answer: [Int] = []
    //1.배열에서 찾기 2.인덱스를 지움
    if arr.count > 1 {
        let index = arr.firstIndex { number in
            number == trash
        }
        arr.remove(at: index!)
        return arr
    }
    else {
        return [-1]

    }
}