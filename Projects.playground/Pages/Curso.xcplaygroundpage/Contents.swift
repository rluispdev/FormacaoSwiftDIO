//: [Previous](@previous)

import Foundation


class Curso {
  var titulo: String
  var descricao: String
  var competencias: [String]
    
    init(titulo: String, descricao: String, competencias: [String]) {
        self.titulo = titulo
        self.descricao = descricao
        self.competencias = competencias
    }
}


let curso1 = Curso(titulo: "Introdução ao Swift", descricao: "Aprender os fundamentos do Swift", competencias: ["Fundamentos do Swift", "Tipos de dados", "Controle de fluxo"])

print(curso1.titulo)
print(curso1.descricao)
print(curso1.competencias)

