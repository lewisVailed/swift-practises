import Cocoa

var greeting = "Hello, playground"

let opposites: [String: String] = ["Mario": "Wario", "Luigi": "Waluigi"]

let peachOpposite = opposites["Peach"]

if let marioOpposite = opposites["Peach"] {
    print("Mario's opposite is \(marioOpposite)")
} else {
    print("The optional was empty")
}

var username: String? = nil

var num1 = 1_000_000
var num2 = 0
var num3: Int? = nil

var str1 = "Hello"
var str2 = ""
var str3: String? = nil

var arr1 = [0]
var arr2 = [Int]()
var arr3: [Int]? = nil

func square(number: Int) -> Int {
    return number * number
}

var number: Int? = nil

if let number = number {
    print(square(number: number))
}

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
}
