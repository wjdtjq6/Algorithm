func solution(_ s:String) -> String {
    //1.두개면 그대로 반환 2.양끝을 뺌 2-1.두개남으면 두개 반환 2-2.한개남으면 한개 반환 3.세개 이상이면 반복
    var answer: String = ""

    return String(s[String.Index(encodedOffset: (s.count-1)/2)...String.Index(encodedOffset: s.count/2)])


}