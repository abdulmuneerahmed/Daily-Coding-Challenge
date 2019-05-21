import UIKit

//var str = "Hello, playground"

//Solution 1

func codeChallenge3(array:[Int])->Int{
    var j = 1
    array.sorted().filter{$0 > 0}.map{ if $0 == j{ j += 1}}
    return j
}

print(codeChallenge3(array: [2, 3, 7, 6, 8, -1, -10, 15]))

