import Foundation


func formLaregstNumber(from array: [String]) -> String {
    var array = array
    for i in 0..<array.count {
        for j in (i+1)..<array.count {
            // Comparision sorting
            if array[i] + array [j] < array[j] + array[i] {
                var temp = array[i]
                array[i] = array[j]
                array[j] = temp
            }
        }
    }
    
    return array.joined()
}

func formLaregstNumberHigherOrderFunctions(from array: [String]) -> String {
    var array = array
    
    array.sort { x, y in
        x + y > y + x
    }
    
    return array.joined()
}

var largestNumberString = formLaregstNumber(from: ["3", "30", "34", "5", "9"])
print(largestNumberString)

var largestNumberStringHOF = formLaregstNumberHigherOrderFunctions(from: ["3", "30", "34", "5", "9"])
print(largestNumberStringHOF)


