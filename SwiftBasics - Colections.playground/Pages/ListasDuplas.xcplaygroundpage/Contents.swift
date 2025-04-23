//Listas duplamente ligadas
/// Lista com referencia ao proximo nó e ao nó anterior
class Node {
    var value: String
    var next: Node?
    weak var previous: Node?
    
    init(value: String) {
        self.value = value
    }
}


class  DoubleLinkedList {
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
    
    public func removeAll() {
        head = nil
        tail = nil
    }
    
    public func append(value: String) {
        /// Criar um nó
        let newNode = Node(value: value)
        
        ///Se a cauda existe
        if let tailNode = tail {
            newNode.previous = tailNode
            tailNode.next = newNode
        }
        
        ///Se a cauda não existe
        else {
            head = newNode
        }
        tail = newNode
    }
    
    public func nodeAt(index: Int) -> Node? {
        if index >= 0 {
            ///nó cabeça
            var node = head
            var i = index
            
            while node != nil{
                ///se i for zerp, então queremos acessar o nó corrente.
                if i == 0 { return node }
                ///itera na lista
                i -= 1
                node = node!.next
            }
        }
        return nil
    }
    
    public func remove(node: Node) -> String
    {
        ///variaveis auxiliares para acessar o nó corrente e o anterior
        let prev = node.previous
        let next = node.next
        
        ///se o o nó anterior existe
        if let prev = prev {
            prev.next = next
        }
        ///nó anterior não existe (removendo a cabeça)
        else {
            head = next
            
        }
        ///Autaliza o ponteiro "anterior" do próximo nó
        next?.previous = prev
        
        ///se o próximo nó é nulo (removendo a cauda)
        if next == nil {
            tail = prev
        }
        
        ///remove referencias do nó removido
        node.previous = nil
        node.next = nil
        
        ///retorna o valor
        return node.value
    }
}

extension DoubleLinkedList : CustomStringConvertible{
    //2
    public var description: String {
        //3
        var text = "["
        var node = head
        //4
        while node != nil {
            text += "\(node!.value)"
            node = node!.next
            if node != nil { text += ", "}
            
        }
        //5
        return text + "]"
    }
}
    
var linkedList = DoubleLinkedList()
linkedList.append(value: "Banana")
linkedList.append(value: "Morango")
//
//print(linkedList)
//
//let firstNode = linkedList.nodeAt(index: 0)
//
//print(firstNode?.value)
// 
//let secondNode = linkedList.nodeAt(index: 1)
//print(secondNode?.value ?? "Nenhum nó")
//
//let invalidNode = linkedList.nodeAt(index: -1)
//let seocndInvalidNode = linkedList.nodeAt(index: 2)
//
//print(invalidNode?.value ?? "Nenhum nó")
//print(seocndInvalidNode?.value ?? "Nenhum nó")

if let firstNode = linkedList.nodeAt(index: 0){
    linkedList.remove(node: firstNode)
}

print(linkedList.description)
print(linkedList.isEmpty)
