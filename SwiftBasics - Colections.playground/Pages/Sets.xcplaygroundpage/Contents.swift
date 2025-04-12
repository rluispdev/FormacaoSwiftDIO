//: [Previous](@previous)

import Foundation

var musicGenresSet: Set<String> = ["Rock", "Funk", "Blues", "Pop"]
var auxMusicGeneresSet = Set<String>()

///Adicona novo elemetno no set
auxMusicGeneresSet.insert("Funk")
print(auxMusicGeneresSet)

///Retrona um novo set com os elementos  em comum entre os dois sets
let instersectionSet =  auxMusicGeneresSet.intersection(musicGenresSet)
print(instersectionSet)

///Retorna um novo set com a união entre dois sets
let unionSet =  auxMusicGeneresSet.union(musicGenresSet)
print(unionSet)

///Retrona um novo set com a diferença entre 'musicGenresSet'e 'auxMusicGenresSet'
let diffSet = musicGenresSet.subtracting(auxMusicGeneresSet)
print(diffSet)

///Retrona se os sets não possuiem algum elementos em comum
let isDisjoint =  auxMusicGeneresSet.isDisjoint(with: musicGenresSet)
print(isDisjoint)


//Retorna se auxMusicGeneresSet está contido em musicGenresSet

let isSubset =  auxMusicGeneresSet.isSubset(of: musicGenresSet)
print(isSubset)

