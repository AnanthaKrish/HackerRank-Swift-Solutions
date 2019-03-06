import UIKit

func sockMerchant(n: Int, ar: [Int]) -> Int {
    
    var arr = ar;
    for i in 1..<arr.count {

        
        let low = arr[i]
        var j = i - 1
        
        while j >= 0 && arr[j] > low {
            
            arr[j+1] = arr[j];
            j = j-1;
        }
        arr[j+1] = low;
    }

    var count = 0
    var i = 0

    while i < arr.count-1 {
        
        let val = arr[i]
        var cccc = 1;
        
        if val == arr[i + 1] {
            cccc += 1
            i += 2
        } else {
            i += 1
        }
        
        if cccc/2 > 0 {
            count += 1
        }
    } 

    return count
}

print(sockMerchant(n: 13, ar: [1,2,1,3,1,4,1,1,4,4,5,3,2]))
print(sockMerchant(n: 9, ar: [10,20,20,10,10,30,50,10,20]))
print(sockMerchant(n: 10, ar: [1,1,3,1,2,1,3,3,3,3]))