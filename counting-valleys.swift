import UIKit

func countingValleys(n: Int, s: String) -> Int {
    
    if (n <= 0 && s.count <= 0) {
        return 0
    }
    
    var str = s
    var value = 0;
    var count = 0
    var isStart = false
    for i in str {
        
        if i == "U" {
            value += 1
        } else if i == "D" {
            value -= 1
        }
        if value < 0 && !isStart {
            count += 1
            isStart = true
        }
        if value >= 0 {
            isStart = false
        }
    }
    return count
}
print(countingValleys(n: 12, s: "DDUUDDUDUUUD"))
print(countingValleys(n: 8, s: "UDDDUDUU"))