import Foundation

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    
    var appless = [Int]()
    var orangess = [Int]()
    
    appless = apples.map{a + $0}
    orangess = oranges.map{b + $0}
    appless = appless.filter{$0 >= s && $0 <= t}
    orangess = orangess.filter{$0 >= s && $0 <= t}
    
    print(appless.count)
    print(orangess.count)
    
}

countApplesAndOranges(s: 7, t: 11, a: 5, b: 15, apples: [-2,2,1], oranges: [5,-6])