//
//  main.swift
//  matryca
//
//  Created by admin on 11/23/23.
//

import Foundation

var tablicaDwuwymiarowa: [[Int]] = Array()
print("Podaj liczbe wierszy: ")
var lWierszy = readLine()!
while(Int(lWierszy)==nil || Int(lWierszy)! < 0)
{
    print("Wprowadzono niepoprawna wartosc. Podaj liczbe wierszy: ")
    lWierszy = readLine()!
}
var wiersze = Int(lWierszy)!
print("Podaj liczbe kolumn: ")
var lKolumn = readLine()!
while(Int(lKolumn)==nil || Int(lKolumn)! < 0)
{
    print("Wprowadzno niepoprawna liczbe kolumn. Wprowadz liczbe kolumn: ")
    lKolumn = readLine()!
}
var kolumny = Int(lKolumn)!
var wpisElem = ""
var dodanyElem = 0
var wiersz : [Int] = Array(repeating: 0, count: kolumny)
for i in stride (from:0, to:wiersze,by:1){
    for j in wiersz.indices
    {
        print("Wprowadz element [\(i)][\(j)] matrycy: ")
        wpisElem = readLine()!
        while(Int(wpisElem)==nil)
        {
            print("Wpisano niepoprawny element. Wpisz liczbe calkowita: ")
            wpisElem = readLine()!
        }
        dodanyElem = Int(wpisElem)!
        wiersz[j] = dodanyElem
    }
    tablicaDwuwymiarowa.append(wiersz)
}

for i in tablicaDwuwymiarowa.indices
{
    for j in tablicaDwuwymiarowa.indices.indices
    {
        print("[\(tablicaDwuwymiarowa[i][j])]", terminator: "")
    }
    print()
}
var najwiekszy : [Int] = []
var ktory = 0
for i in tablicaDwuwymiarowa.indices
{
    if(tablicaDwuwymiarowa[i].reduce(0,+)>najwiekszy.reduce(0,+))
    {
        najwiekszy = tablicaDwuwymiarowa[i]
        ktory = i
    }
}
print("Wiersz o najwiekszej sumie to wiersz \(ktory) ")
print("Wiersz \(ktory): \(najwiekszy) suma elementow : \(najwiekszy.reduce(0,+))")

