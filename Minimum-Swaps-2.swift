import UIKit

func findCount(arr: [Int], min:Int, max:Int) -> Int {
    
    var ans = 0
    
    if arr.count == 1 {
        if arr[0] != min {
            ans += 1
        }
        return ans
    }
    if arr.count == 2 {
        if arr[0] != min  {
            ans += 1
        }
        if arr[1] != max {
            ans += 1
        }
    } else {
        let midd = arr.count / 2
        
        if midd == 1 {
                if arr[0] != min {
                    ans += 1
                }
            
            let rightArray = Array(arr[midd...arr.count-1])
            ans += findCount(arr: rightArray, min: midd, max: max)
        } else {
            
            let leftArray = Array(arr[0...midd-1])
            let rightArray = Array(arr[midd...arr.count-1])
            ans += findCount(arr: leftArray, min: min, max: midd-1) + findCount(arr: rightArray, min: midd-1, max: max)
        }
        
    }
    return ans
}