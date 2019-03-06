import UIKit

func repeatedString(s: String, n: Int) -> Int {
    
    if s.count <= 0 || n <= 0 {
        return 0
    }
    
    if s.count == 1 {
        if s != "a" {
            return 0
        }
        return n
    }
    let subArr = s.components(separatedBy: "a")
    if n == 1 {
        if subArr.count - 1 > 0  {
            return subArr.count - 1
        } else {
            return 0
        }
    }
    
    let strCount = subArr.count - 1
    if strCount <= 0 {
         return 0
    }
    
    
    var times = n / s.count
    times *= strCount
    var balance = n % s.count
    var i = 0

    while balance > 0 {
        
        var strr = s[s.index(s.startIndex, offsetBy: i)]
        if strr == "a" {
            times += 1
        }
        balance -= 1
        i += 1
    }
    return times
}

print(repeatedString(s: "a", n: 1000000000000))
print(repeatedString(s: "aba", n: 10))
print(repeatedString(s: "abcac", n: 10))
print(repeatedString(s: "X", n: 10))
