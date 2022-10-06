var words = [String]()
while let line = readLine(){
    words.append(line)
}
func swap(integers: inout [String], firstIndex: Int, secondIndex: Int){
    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp 
}
func bubbleSort(_ unsortedIntegers: [String]){
    var temp : [String] = []
    var sortingIntegers = unsortedIntegers
     var passCount = 0
    var totalSwapCount = 0
    var swapCountPerPass = 0
    temp.append("Pass: 0, Swaps: 0/0, Array: \(sortingIntegers)")
    repeat{
       
        passCount += 1
        
        swapCountPerPass = 0
        for index in 0 ..< unsortedIntegers.count - 1{
            let thisIndex = index
            let nextIndex = index + 1
            let thisElement = sortingIntegers[thisIndex]
            let nextElement = sortingIntegers[nextIndex]
            if thisElement > nextElement{
                swap(integers: &sortingIntegers, firstIndex: thisIndex, secondIndex: nextIndex)
                totalSwapCount += 1
                swapCountPerPass += 1
            }
        }
        temp.append("Pass: \(passCount), Swaps: \(swapCountPerPass)/\(totalSwapCount), Array: (sortingIntegers)")
    }while swapCountPerPass > 0 
    print(sortingIntegers)
    return
}

bubbleSort(words)
