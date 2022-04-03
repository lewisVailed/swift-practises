import Cocoa
import Darwin

var greeting = "Hello, playground"

func greetUser() {
    print("Hi User")
}

greetUser()

let greetCopy: () -> Void = greetUser
greetCopy()

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 1...size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

func generateNumber() -> Int {
    Int.random(in: 1...20)
}

let rolls = makeArray(size: 50, using: {
    Int.random(in: 1...20)
})

print(rolls)

// we'll create definiton of func inside the func

func doImportantWork(first:() -> Void, second:() -> Void, third:() -> Void) {
    print("About the start first work")
    first()
    print("About the start second work")
    second()
    print("About the start third work")
    third()
}

doImportantWork  {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

let luckyNumber =  [7,4,38,21,16,15,12,33,31,49]
let luckyEven = luckyNumber.filter { $0.isMultiple(of: 2) }
print(luckyEven.sorted { $0 < $1 })

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49].filter{!$0.isMultiple(of: 2)}.sorted{$0 < $1}.map{String($0) + " is a lucky number"}
print(luckyNumbers)

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let wings = Album(title: "Wings", artist: "BTS", year: 2016)
print(wings.artist)
wings.printSummary()

struct Eemployee {
    let name: String
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation")
            print("Days remaining: \(vacationRemaining)")
        } else {
                print("You are not going anywhere")
            }
        }
    

 


struct Emplooye {
    let name: String
    var vacation: Int
}

}
