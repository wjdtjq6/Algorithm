func solution(_ s:String) -> Bool {
    if s.count == 4 || s.count == 6 {
        if s.allSatisfy({$0.isNumber}) {
            return true
        }
        else {
            return false
        }
    }
    else {
        return false
    }
}