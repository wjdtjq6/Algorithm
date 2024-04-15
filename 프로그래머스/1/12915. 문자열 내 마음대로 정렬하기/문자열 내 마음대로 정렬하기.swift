func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted(by: {
        let char0 = $0[$0.index($0.startIndex, offsetBy: n)]
        let char1 = $1[$1.index($1.startIndex, offsetBy: n)]
        return (char0, $0) < (char1, $1)
    })
}
