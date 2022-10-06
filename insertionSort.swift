var words = [String]()
while let line = readLine(){
    words.append(line)
}
func insertionSort(_ array: [String]) {


    var sortedArray = array
    var changed = true
    if array.count>1{
        for i in 1...(array.count-1){
            while changed{
                changed = false
                for j in 0...(i-1){
                    if sortedArray[j] > sortedArray[j + 1]{
                        sortedArray.swapAt(j, j+1)
                        changed = true
                    }                    
                }
            }
            changed = true
        }
    }
}

insertionSort(words)        
