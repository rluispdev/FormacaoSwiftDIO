//: [Previous](@previous)

struct StringStack{
    private var array = [String]()
    
    mutating func push(_ element: String){
        array.append(element)
    }
    
    mutating func pop() -> String?{
        return array.popLast()
    }
    
    func top() -> String?{
        return array.last
    }
    
    var isEmpty: Bool{
        return array.isEmpty
    }
}


var stack = StringStack()

print(stack.isEmpty)
print(stack.top() ?? "Pilha Vazia")
stack.push("1")
print(stack.isEmpty)
print(stack.top() ?? "Pilha Vazia")
stack.push("2")
print(stack.top() ?? "Pilha Vazia")
stack.pop()
print(stack.top() ?? "Pilha Vazia")
stack.pop()
print(stack.top() ?? "Pilha Vazia")
print(stack.isEmpty)
