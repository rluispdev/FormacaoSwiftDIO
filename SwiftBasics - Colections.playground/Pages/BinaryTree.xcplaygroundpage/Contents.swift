enum StringBinaryTree{
    case empty
    indirect case node(StringBinaryTree, String, StringBinaryTree)
}

//Folhas
let leafD = StringBinaryTree.node(.empty, "D", .empty)
let leafE = StringBinaryTree.node(.empty, "E", .empty)
let leafF = StringBinaryTree.node(.empty, "F", .empty)
let leafG = StringBinaryTree.node(.empty, "G", .empty)

//nós intermediarios
let nodeB = StringBinaryTree.node(leafD, "B", leafE)
let nodeC = StringBinaryTree.node(leafF, "C", leafG)

//raiz
let root = StringBinaryTree.node(nodeB, "A", nodeC)

extension StringBinaryTree: CustomStringConvertible {
    var description: String {
        switch self {
        case let .node(left, value, right):
            return "value: \(value), \n left = [" + left.description + "], \n right = [" + right.description + "]"
            case .empty:
            return ""
        }
    }
}

print(root)
