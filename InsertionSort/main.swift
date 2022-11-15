

// ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩  ⇩
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
let unsortedIntegers = [5, 1, 4, 2, 8]
// DO NOT ALTER THE TEXT BETWEEN THESE LINES =========={M{E{R{L{I{N{1}N}I}L}R}E}M}=====================================
// ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧  ⇧


// Add your code below:

/*
func insertionSort(_ array: [Int]) {
    var passes = 0
    var swaps = 0
    var totalSwaps = 0

    print("Pass: \(passes), Swaps: \(swaps)/\(totalSwaps), Array: \(unsortedIntegers)")
    var arr = unsortedIntegers
    for x in 1..<arr.count {
        var y = x
        swaps = 0
        passes += 1
        while y > 0 && arr[y] < arr[y - 1] {
            arr.swapAt(y-1, y)
            y -= 1
            totalSwaps += 1
            swaps += 1
        }
        print("Pass: \(passes), Swaps: \(swaps)/\(totalSwaps), Array: \(arr)")
    }
}

insertionSort(unsortedIntegers)
 */
func readInput() -> [String] {
    var unsorted = [String]()
    while let line = readLine() {
        unsorted.append(line)
    }
    return unsorted
}

func insertionSort (_ array: [String]) -> [String] {
    var passes = 0
    var swaps = 0
    var totalSwaps = 0
    var arr = array
    for x in 1..<arr.count {
        var y = x
        swaps = 0
        passes += 1
        while y > 0 && arr[y] < arr[y - 1] {
            arr.swapAt(y - 1, y)
            y -= 1
            totalSwaps += 1
            swaps += 1
        }
    }
    return arr
}

print(insertionSort(readInput()))
    
