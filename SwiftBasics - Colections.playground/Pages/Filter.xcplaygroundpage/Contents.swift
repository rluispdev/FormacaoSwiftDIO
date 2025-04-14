//: [Previous](@previous)

import Foundation

struct Person{
    var name: String
    var age : Int
}

let name = "Betina"

let people: [Person] = [Person(name:"Elton", age: 34), Person(name: "Jane", age: 39), Person(name: "Betina", age: 23)]

for person in people {
    if person.name == "Elton" {
        print(person)
    }
}


//// Recupera o primeiro elemento da coleção que satisfaz a condição
let me = people.first { $0.name == name }
print(me ?? "Not found")

///Retrona se a coleção possui alguém com idade maior que 18
let hasAdult = people.contains { $0.age > 18 }
print(hasAdult)


///Retorna uma nova coleção com os elementos da coleção inicial que satis fazem a condição.
let adults = people.filter { $0.age > 18 }
print(adults)

let adults1 = people.filter({ person in
    return person.age > 18
})
print(adults1)
