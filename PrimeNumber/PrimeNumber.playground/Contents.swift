import Foundation


func checkPrimeNumber(number: Int) -> Bool {
    if number <= 0 {
        return false
    }
    
    if [1, 2, 3].contains(number) {
        return true
    }
    
    for i in 2 ..< number {
        if number % i == 0 {
            return false
        }
    }
    
    return true
}

print(checkPrimeNumber(number: 0))


func printPrimerNumber(to number: Int) {
    for i in 0 ... number {
        print(checkPrimeNumber(number: i) ? "Prime Number: \(i)" : "")
    }
}

printPrimerNumber(to: 13)
