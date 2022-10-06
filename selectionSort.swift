var words = [String]()

while let line = readLine(){
    words.append(line)
}
func selectionSort(_ array: [String]){
    var sortedArray = array
    var lower = 0
    var a = 0
    var lowerSet = false
    if array.count>1{
        for b in 0...(array.count-2){
            a = b
            for c in 1...(array.count-b-1){
                if !lowerSet && sortedArray[a] > sortedArray[b+c]{
                    lower = (b+c)
                    a = a+1
                    lowerSet = true
                }else if lowerSet && sortedArray[lower] > sortedArray[b+c]{
                    lower = (b+c)
                    a = a+1
                    lowerSet = true
                }
            }
            if lower != b{
                sortedArray.swapAt(b, lower)
            }
            lower = b + 1
            lowerSet = false
        }
    }
}

selectionSort(words)
print(words.count)
