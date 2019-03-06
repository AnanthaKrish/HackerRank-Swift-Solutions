import UIKit

func jumpingOnClouds(c: [Int]) -> Int {
    
    if c.count <= 0 {
        return 0
    }
    
    if c.count == 1 {
        if c[0] == 1 {
            return 0
        } else {
            return 1
        }
    }
    
    if c[0] == 1 && c[1] == 1{
        return 0
    }
    
    
    var i = 0
    var count = 0
    
    while i < c.count {
        
        if  i+2 < c.count && c[i+2] == c[i] {
            i += 2
            count += 1
        } else if i+1 < c.count && c[i+1] == c[i]{
            i += 1
            count += 1
        } else {
            break;
        }
    }
    
    return count
    
}
print(jumpingOnClouds(c: [0,0,0,0,1,0]))
print(jumpingOnClouds(c: [0,0,1,0,0,1,0]))
print(jumpingOnClouds(c: [0,0,0,1,0,0]))