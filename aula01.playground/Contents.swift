//--------------quest1
let numA = 5
let numB = 7
let numC = 3
func retornaMaior (_ numA: Int, _ numB: Int, _ numC: Int) -> String {
    var arrayNums = [numA, numB, numC]
    arrayNums = arrayNums.sorted()
    
    return "Maior: \(arrayNums[2]) Meio: \(arrayNums[1]) Menor: \(arrayNums[0])"
}
retornaMaior(numA, numB, numC)

//--------------quest2
let numbers = [1,2,4,6,2,6,2,3,7,7,5,2]
numbers.count
func bubble (_ arrayNum:Array<Int>) -> Array<Int> {
    var localNumbers = arrayNum
    for i in 1..<localNumbers.count {
        for j in 0..<(localNumbers.count-1) {
            if(localNumbers[j] > localNumbers[j+1]) {
                localNumbers.swapAt(j, j+1)
            }
        }
    }
    return localNumbers
}
bubble(numbers)

//-------------quest3
/*func quicksort(_ arrayNum:Array<Int>) -> Array<Int> {
    if(arrayNum.count > 0) {
        var localNumbers = arrayNum
        var i = 0
        var j = localNumbers.count
        var pivot = (i + j)/2
        while(i<j) {
            while(localNumbers[]){
                
            }
        }
        return localNumbers
    } else {
        return []
    }
}
quicksort(numbers)
 */


