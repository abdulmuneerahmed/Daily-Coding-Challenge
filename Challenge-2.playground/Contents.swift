import UIKit


//Solution 1
func addUptoK(array:[Int],valueK:Int)->Bool{
    for i in array{
        for j in array where i != j{
            if (i+j) == valueK{
                return true
            }
        }
    }
    return false
}
//print(addUptoK(array: [10,15,3,7], valueK: 25))

//Solution 2
func reducedSolution(array:[Int],valueK:Int)->Bool{
    
    return array.map{ first in array.filter{$0 != first}.map{$0+first}
        }.map{$0.contains(valueK)}.contains(true)
}

print(reducedSolution(array: [10,15,3,7], valueK: 25))

