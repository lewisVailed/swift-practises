import Cocoa

var greetin = "Hello, playground"

// var komudu değişken oluşturur.
// let komudu sabit oluşturur.
// Int Bool Double String bazı değişkenlerdir.
// print konsola yazar
// print(number.isMultiply(of: number)  komut türü

let filename = "Paris.jpg"
print(filename.hasSuffix(".jpg"))

let isMultiply = 120.isMultiple(of: 3)

var Authenticated = false
Authenticated = !Authenticated

var gameOver = true
gameOver.toggle()
print(gameOver)
gameOver.toggle()
print(gameOver)

var rating: Double = 5.0
rating *= 5
print(rating)

let actor = "Dani"

let quote = "Then he tapped a sign saying \"Believe\" and walked away"

let movie = """
A day in
the life.jpg of an
Apple engineer
"""
print(movie)



let nameLenght = actor.count
print(nameLenght)


let cry = "cryin all the time.jpgrs"

print(movie.hasPrefix("A day in"))

print(cry.hasSuffix(".jpgrs"))

// hasPrefix stringin içinde o kelime/cümle bulunup bulunmadığı kontrol edilir
// uppercased büyük harf, """ paragraf için
// count kaç heceli olduğun sayar

print("Apple")

print(greeting.hasSuffix("hello,"))
print(greeting.hasSuffix("world!"))
print(greeting.hasSuffix("World!"))


let firstPart = "Hello, "
let secondPart = "world!"

let greeting = firstPart + secondPart

let people = "Haters "
let action = " hate"
let lyric = people + "gonna" + action


let name = "Taylor"
let age = 26
let massage = "Hello, my name is \(name) and I'm \(age) years old"
print(massage)


let itsanumber = 42
let bla = "Jack \(itsanumber) Raider"

print("5 x 5 = \(5 * 5)")


enum weekend {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

let helme = Planet.mercury
print(helme)

enum numbers {
    case ey
    case eyy
}

// case içinde string barınabilir.


var actors = Set<String>()
actors.insert("Dani")
actors.insert("Prol")
actors.insert("Claum")

print(actors)



var fruits = Set<Double>()
fruits.insert(1.0)
fruits.insert(5.7)

print(fruits)

// set içinde belirlediğimiz herangi bir değer barınabilir.
// hatırlatma hasprefix string arama işlemi, hasssuffix son ek arama işlemidir.


// enums
// set
// array

var takim = [Int]()
var takims = Array<Int>()
var takimss = ["Wow", "ItsClasicOne"]
takim.append(10)
takim.append(30)
takims.append(10)
print(takim[0])

var cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.contains("Frozen"))
print(cities.count)
cities.remove(at: 2)
print(cities.count)
cities.removeAll()
print(cities.count)
print(cities.sorted())
