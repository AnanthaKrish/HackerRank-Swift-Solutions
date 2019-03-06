import UIKit

func minimumBribes(q: [Int]) -> Void {
    
    var ans = 0
    var shouldShow = true
    for i in stride(from: (q.count - 1), through: 0, by: -1) {
        
        if (q[i] - (i+1) > 2) {
           shouldShow = false
            break;
        }
        
        for j in  stride(from: max(0, q[i] - 2), to: i, by: 1){
            if q[j] > q[i] {
                ans += 1
            }
        }
    }
    
    if shouldShow {
        print(ans)
    } else {
        print("Too chaotic")
    } 
}
