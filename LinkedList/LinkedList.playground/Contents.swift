import UIKit

class Node {
    var next: Node? = nil
    var data: Int? = 0
    
    init(data: Int?, next: Node?) {
        self.data = data
        self.next = next
    }
}

class LinkedList {
    var head: Node?
    var previous: Node?
    var current: Node?
    
    func insert(data: Int?) {
        let node = Node(data: data, next: nil)
        if head == nil {
            head = node
        }
        else {
            current = head
            while current?.next != nil {
                current = current?.next
            }
            current?.next = node
        }
    }
    
    func delete(data: Int?) -> Bool {
        if head == nil {
            return false
        }
        
        current = head
        
        while current != nil {
            if current?.data == data {
                previous?.next = current?.next
                return true
            }
            else {
                previous = current
                current = current?.next
            }
        }
        return false
    }
    
    func printList() {
        previous = head
        while previous != nil {
            print(previous?.data ?? "NA")
            previous = previous?.next
        }
    }
}

var linkedList = LinkedList()
linkedList.insert(data: 10)
linkedList.insert(data: 30)
linkedList.insert(data: 50)
linkedList.printList()
print("\n")
linkedList.delete(data: 30)
linkedList.printList()
print("\n")
linkedList.delete(data: 50)
linkedList.printList()
