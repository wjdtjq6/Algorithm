import Foundation

func solution(_ babbling:[String]) -> Int {
    var arr: [String] = ["aya","ye","woo","ma"]
    var arr2: [String] = []
    var arr3: [String] = []    
    var arr4: [String] = []
    var arr5: [String] = []
    var arr6: [String] = []

    var result = 0
    for i in arr {
        for j in arr {
            if i != j {
                arr2.append(i+j)
            }
            for k in arr {
                if i != j && j != k {
                    arr3.append(i+j+k)
                }
                for l in arr {
                    if i != j && j != k && k != l {
                        arr4.append(i+j+k+l)
                    }
                    for m in arr {
                        if i != j && j != k && k != l && l != m {
                            arr5.append(i+j+k+l+m)
                        }
                        for n in arr {
                            if i != j && j != k && k != l && l != m && m != n{
                                arr6.append(i+j+k+l+m+n)
                            }
                        }
                    }
                }
            }
        }
    }
    for i in babbling {
        for j in arr {
            if i == j {
                result += 1
            }
        }
        for j in arr2 {
            if i == j {
                result += 1
            }
        }
        for j in arr3 {
            if i == j {
                result += 1
            }
        }
        for j in arr4 {
            if i == j {
                result += 1
            }
        }
        for j in arr5 {
            if i == j {
                result += 1
            }
        }
        for j in arr6 {
            if i == j {
                result += 1
            }
        }
    }
    return result
}