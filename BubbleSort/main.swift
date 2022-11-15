

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧

/*
func swap(integers : inout [Int], firstIndex: Int, secondIndex: Int) {
    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp

}

func bubbleSort(unsortedIntegers: [Int]) -> [Int] {

    var totalSwap = 0
    var passCount = 0

    var sortingIntegers = unsortedIntegers
    var swapCountPerPass: Int
    print("Pass: 0, Swaps: 0/0, Array: \(unsortedIntegers)")

    repeat {
        swapCountPerPass = 0

        for index in 0 ..< sortingIntegers.count - 1 {
            let thisIndex = index
            let nextIndex = index + 1

            let thisElement = sortingIntegers[thisIndex]
            let nextElement = sortingIntegers[nextIndex]

            if thisElement > nextElement {
                swap(integers: &sortingIntegers, firstIndex: thisIndex, secondIndex: nextIndex)

                swapCountPerPass += 1
                totalSwap += 1
            }
        }
        passCount += 1
        print("Pass: \(passCount), Swaps: \(swapCountPerPass)/\(totalSwap), Array: \(sortingIntegers)")
    }
      while swapCountPerPass != 0
    return sortingIntegers
}
var sortedIntegers = bubbleSort(unsortedIntegers : unsortedIntegers)
 */

func readInput(_ unsorted: inout [String] ) {
    while let line = readLine() {
        unsorted.append(line)
    }
}

func swap(integers:inout [String], firstIndex: Int, secondIndex: Int) {
    return integers.swapAt(firstIndex,secondIndex)
}

    var totalSwap = 0
    var totalPass = 0
    var sortedIntegers = [String]()
    var currentSwap = 0
    readInput(&sortedIntegers)
    print("Pass: \(totalPass), Swaps: \(currentSwap)/\(totalSwap), Array: \(sortedIntegers)")
    repeat {
        currentSwap = 0
        for index in 1..<sortedIntegers.count {
            if sortedIntegers[index] < sortedIntegers[index - 1] {
                swap(integers:&sortedIntegers, firstIndex:index-1, secondIndex:index)
                currentSwap += 1
                totalSwap += 1

            }
        }
        totalPass += 1
        print("Pass: \(totalPass), Swaps: \(currentSwap)/\(totalSwap), Array: \(sortedIntegers)")  
    } while currentSwap > 0
    
