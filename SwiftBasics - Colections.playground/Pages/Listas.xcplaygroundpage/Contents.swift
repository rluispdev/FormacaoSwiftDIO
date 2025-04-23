
//Lista Simples


class Node {
    var value: String
    var next: Node?
    
    init(value: String) {
        self.value = value
        
    }
}

class SimpleLinkedList {
    private var head: Node?
    private var tail: Node?
    
    public var isEmpty: Bool {
        return head == nil
    }
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
        return tail
    }
    
    public func append(value: String) {
        ///Cria um nó
        let newNode = Node(value: value)
        if let tailNode = tail {
            tailNode.next = newNode
            ///Se a cauda nao existe
        }else {
            head = newNode
        }
        ///Caulda e o ultimo no adicionado
        tail = newNode
        
    }
    
    public func nodeAt(index: Int) -> Node? {
        if index >= 0 {
            ///nó cabeça
            var node = head
            var i = index
            
            while node != nil {
                ///se i for zero, então queremos acessar o nó corrente
                if i == 0 { return node }
                
                ///itera na lista
                i -= 1
                node = node?.next
            }
        }
        return nil
    }
    
    public func removeAll() {
        head = nil
        tail = nil
    }
    
    public func remove(node: Node) {
        /// variáveis auxiliaeres para cessar o no corrente e o anterior
        var current = self.head
        var previous: Node? = nil
        
        while current != nil {
            ///Encontrou nó que buscamos
            if current?.value == node.value {
                if previous != nil {
                      //caso o nó que queremos deletar seja a cauda a deletamos
                    if current?.value == self.tail?.value {
                        self.tail = previous
                    }
                    ///Atualiza o pontiero próximo do nó anterior (agora é a cauda)
                    previous?.next = current?.next
                    break
                }else {
                    ///Se a cabeca for igual a tail
                    if current?.value == self.tail?.value {
                        ///tail recebe nulo
                        self.tail = previous
                    }
                    ///Atulaiza a cabeça da lista
                    self.head = current?.next
                    break
                }
            }
        }
    }
}

extension SimpleLinkedList : CustomStringConvertible{
    public var description: String {
        var text = "["
        var node = head
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", "}
            
        }
        return text + "]"
    }
}
    

var linkedList = SimpleLinkedList()
linkedList.append(value: "Banana")
linkedList.append(value: "Morango")

//let firstNode = linkedList.nodeAt(index: 0)
//
//print(linkedList) 
//
//print(firstNode?.value ?? "Nenhum nó")
//
//let secondNode = linkedList.nodeAt(index: 1)
//print(secondNode?.value ?? "Nenhum nó")
//
//let invalidNode = linkedList.nodeAt(index: -1)
//let seocndInvalidNode = linkedList.nodeAt(index: 2)
//
//print(invalidNode?.value ?? "Nenhum nó")
//print(seocndInvalidNode?.value ?? "Nenhum nó")

linkedList.removeAll()
print(linkedList.description)
print(linkedList.isEmpty)

