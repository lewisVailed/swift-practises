import Cocoa

var greeting = "Hello, playground"

var countdown = 10

while countdown > 0 {
    print("countdown: \(countdown)")
    countdown -= 1
}

let id = Int.random(in: 1...1_000)
print(id)

var age = 14
let canVote = age >= 18 ? "canVote" : "cannotVote"
print(canVote)

let num = sqrt(169)
print(num)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted()
    let second = string2.sorted()
    return first == second
}

print(areLettersIdentical(string1: "weccon", string2: "conpec"))

func phytagoras(a: Double, b: Double) -> Double {
    return sqrt(a*b)
}

phytagoras(a: 16, b: 9)

func another(a: Double, b: Double) -> Double {
    sqrt(a*a + b*b)
}

another(a: 5, b: 12)

func getUser() -> [String: String] {
    ["firstName": "Taylor", "secondName": "Swift"]
}

let user = getUser()
print("Name: \(user["firstName", default: "?"]) \(user["secondName", default: "?"])")

func getAnotherUser() -> (firstName: String, secondName: String) {
    ("Taylor", "Swift")
}

let (firstName, _) = getAnotherUser()
print("Name: \(firstName)")

func rollDice(count: Int, sides: Int) -> [Int] {
    var rolls = [Int]()
    for _ in 1...count {
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    return rolls
}

let rolls = rollDice(count: 4, sides: 6)

func isUpperCased(_ string: String) -> Bool {
    return string == string.uppercased()
}

let string  = "HELLOWORLD"
let resultt = isUpperCased(string)

func printTimesTable(for number: Int, end: Int) {
    for i in 1...end {
        print("\(number) x \(i) = \(i*number)")
    }
}

printTimesTable(for: 4, end: 5)
