import Cocoa

var greeting = "Hello, playground"


func trimmed(_ string: String) -> String {
    string.trimmingCharacters(in: .whitespacesAndNewlines)
    }


var quote = "    The truth is rarely pure and never simple    "
trimmed(quote)

func randomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }
}

print(quote.trimmed())


let lyrics = """
    Can I keep cruising
Can't stop   , won't stop moving
It's like I got the music in my mind
Saying it's gonna be    alright
"""

print(lyrics.lines.count)
print(lyrics.trimmed())

struct Book {
    var title: String
    var pageCount : Int
    var readingHours : Int
}

extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingHours = pageCount / 5
    }
}

let say = Book(title: "title", pageCount: 292, readingHours: 12)

extension Collection {
    var isNotEmpty : Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty  {
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String {get}
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee : Person {
    let name: String
}

let Taylor = Employee.init(name: "Taylor")
Taylor.sayHello()


extension Numeric {
    func squared() -> Self {
        6  * self
    }
}

let rando = 15.4
rando.squared()

struct User: Equatable, Comparable {
    let name: String
}

func <(lhs: User, rhs: User) -> Bool {
    lhs.name < rhs.name
}

let user1 = "Link"
let user2 = "Zel"
print(user1 == user2)
print(user1 != user2)
print(user1 < user2)

protocol Buildings {
    var room: Int { get }
    var cost: Int { get }
    var agentName: String { get }
    func salesSummary()
}

struct House: Buildings {
    var room = 4
    var cost = 200_000
    var agentName =  "SocratesService"
    func salesSummary() {
        "This flat is wonderfully sales of. You must buy it!"
    }
}

struct Office: Buildings {
    var room = 12
    var cost = 1_600_000
    var agentName = "OfficeBuilder"
    func salesSummary() {
        "Office series was filmed on that office"
    }

}




