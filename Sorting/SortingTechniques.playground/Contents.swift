import UIKit

func bubbleSort(array: [Int]) -> [Int] {
    var array = array
    if array.isEmpty {
        return array
    }
    for i in 0..<array.count {
        for j in (i + 1)..<array.count {
            if array[i] > array[j] {
                var temp = array[j]
                array[j] = array[i]
                array[i] = temp
            }
        }
    }
    return array
}


func insertionSort(array: [Int]) -> [Int] {
    var array = array
    if array.isEmpty {
        return array
    }
    for i in 1..<array.count {
        var j = i - 1
        var key = array[i]
        while j >= 0 && array[j] > key {
            array[j+1] = array[j]
            j = j - 1
        }
        array[j+1] = key
    }
    return array
}


let array = [8, 4, 10, 5, 0, -3, 100, 50, 50]

let insertionSorted = insertionSort(array: array)
print("Insertion sort \(insertionSorted)")

let bubbleSorted = bubbleSort(array: array)
print("Bubble sort = \(bubbleSorted)")
