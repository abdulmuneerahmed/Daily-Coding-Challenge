import UIKit

var str = "Hello, playground"

// Solution 1
func challenge1(array:[Int])->[Int]{
    var result:[Int] = []
    for i in array{
        var multiplier = 1
        for j in array where j != i{
            multiplier *= j
        }
        result.append(multiplier)
    }
    return result
}

// Solution 2
func reducedChallenge(array:[Int])->[Int]{
    var result:[Int] = []
    array.map{ first in result.append(array.filter{$0 != first}.reduce(1){$0 * $1})}
    return result
}

let result = reducedChallenge(array: [1,2,3,4,5])

print(result)
