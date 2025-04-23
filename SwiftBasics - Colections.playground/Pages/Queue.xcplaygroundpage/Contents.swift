//: [Previous](@previous)

import Foundation

struct IntQueue{
    var items : [Int] = []
    
    mutating func enqueue(_ item : Int){
        items.append(item)
    }
    
    mutating func dequeue() -> Int?{
       if items.isEmpty{
            return nil
       }else{
           let tempelement = items.removeFirst()
           items.remove(at: 0)
           return tempelement
       }
    }
    
    func peek()-> Int?{
        return items.first
    }
    
    var isEmpty : Bool{
        return items.isEmpty
    }
}


var queue : IntQueue = IntQueue()

queue.enqueue(1)
let firstElement = queue.peek()
 print(firstElement ?? "Queue is empty")

queue.enqueue(8)
queue.enqueue(4)

let dequeuedElement = queue.dequeue()
print(dequeuedElement ?? "Queue is empty")

