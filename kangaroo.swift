import Foundation

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    
    
    var X1 = x1
    var X2 = x2
    
    for _ in 0...10000  {
        
        if X1 == X2 {
            return "YES"
        }
        X1 += v1
        X2 += v2
        
    }
    
    return "NO"
}


print(kangaroo(x1: 0, v1: 3, x2: 4, v2: 2))
print(kangaroo(x1: 0, v1: 2, x2: 5, v2: 3))