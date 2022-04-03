import Cocoa

var greeting = "Hello, playground"


func veri() -> (isim: String, soyad: String) {
    ("Where", "Alive")
}

let (isim, soyad) = veri()
print("Name: \(isim) Surname: \(soyad.uppercased())")

enum dayTime {
    case morning, afternoon
}

var dayNotes = dayTime.morning

switch dayNotes {
case .morning : print("any any any day")
case .afternoon : print("the end end end")
}

dayNotes = .afternoon

enum passwordError: Error {
    case short, obvios
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw passwordError.short }
    if password == "12345" { throw passwordError.obvios }
    
    if password.count < 8 {
        return "ok"
    } else if password.count < 10 {
        return "good"
    } else {
        return "excellent"
    }
}
let string = "12345"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch {
    print("There was an error: \(error.localizedDescription)")
}

enum numberError : Error {
    case notAcceptable, cantFind
}
func squareToNumber(for number: Int) throws -> Double {
    if number == 0 { throw numberError.cantFind }
    if number >= 10_000 || number <= 1 { throw numberError.notAcceptable }
    return  sqrt(Double(number))
    
}

do {
    let result = try squareToNumber(for: 256)
    print("Result is \(result)")
} catch numberError.notAcceptable {
    print("Out of Bounds")
} catch numberError.cantFind {
    print("No root found")
} catch {
    print("Not founded")
}

let sayHello = { (name: String) -> String in "Hello \(name)"}
print(sayHello("Mark"))


func sayMello(_ name: String) -> String {
    return "Mello \(name)"
}
print(sayMello("Mark"))

func greetUser() {
    print("Hi there")
}

var greetCopy: () -> Void = greetUser
greetCopy()

var dic = Array<String>(["Woho", "Sala"])
dic.append("sola")

func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = getUserData
print(data(1989))

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let captainsFirstTeam = team.sorted { $0 > $1 }
print(captainsFirstTeam)

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let sortedTeam = team.sorted()
//print(sortedTeam)

func teamSorter(name1: String, name2: String) -> Bool {
    if name1 == "Tasha" {
        return false
    } else if name2 == "Tasha" {
        return true
    }
    
    return name1 < name2
}

let captainLastTeam = team.sorted(by: teamSorter)

let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    if name1 == "Tasha" {
        return true
    } else if name2 == "Tasha" {
        return false
    }
    
    return name1 < name2
})

//print(captainFirstTeam)

