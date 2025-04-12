//: [Previous](@previous)

// Dicionario Vazio
var intNames: [Int: String] = [:]

///Dicionário Populpado
var countryNames: [String: String] = ["BR": "Brasil"]

///Adição de valore e chaves no dicionário
intNames[1] = "Um"
intNames[2] = "Dois"

print(intNames)

///Retorna uma colecao com as chaves e values do dicionario
print(intNames.keys)
print(intNames.values)

 ///Acesso ao valor associado a chave 1
print(intNames[1] ?? "Chave não encontrada")
print(intNames[10] ?? "Chave não encontrada")

