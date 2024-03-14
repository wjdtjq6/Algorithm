func solution(_ s:String) -> String {
    var answer: String = ""

    return String(s[String.Index(encodedOffset: (s.count-1)/2)...String.Index(encodedOffset: s.count/2)])


}