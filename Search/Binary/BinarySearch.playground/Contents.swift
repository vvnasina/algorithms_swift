import Foundation


class BinraySearch {
    
    var array = [1, 4, 5, 8, 5 , 18, 7, 44, 20, 45, 65]
    
    init() {
        array.sort()
        print(array)
    }
    
    func binarySearch(l: Int, r: Int, key: Int) -> Int {
        if l == r {
            return key == array[l] ? key : -1
        }
        
        let mid = (l + r) / 2
        
        if array[mid] == key {
            return mid
        }
        else if key < array[mid] {
            return binarySearch(l: l, r: mid - 1, key: key)
        }
        else if key > array[mid] {
            return binarySearch(l: mid + 1, r: r, key: key)
        }        
        
        return -1
    }
    
}

let bs = BinraySearch()
let searchKey = bs.binarySearch(l: 0, r: bs.array.count-1, key: 105)
print(searchKey)
