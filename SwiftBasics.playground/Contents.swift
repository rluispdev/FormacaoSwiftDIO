import UIKit


//MARK: - Array

var intArray = [Int]()

var auxIntArray: [Int] = [1,1,3]

///Adiciona um elmento no final
intArray.append(1)
print(intArray)


///Adiciona conteúdos de outro array no final do array
intArray.append(contentsOf: auxIntArray)
print(intArray)


///Acessa o primeiro  elemento do array
let first = intArray.first
print(first ?? "Array vazio")


///Acessa o último elemento do array
let last = intArray.last
print(last ?? "Array vazio")

///Retorna o tamnho do array
let count = intArray.count
print(count)

///Remove o lemento na posicao especificada
intArray.remove(at: 1)
print(intArray)


///Remove todos elementos
intArray.removeAll()
print(intArray)


///Retorna se o array em questao esta vazio
let isEmpty = intArray.isEmpty
print(isEmpty)

