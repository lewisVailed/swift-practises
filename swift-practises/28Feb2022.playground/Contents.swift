import Cocoa

var greeting = "Hello, playground"

var name: String? = nil

if let name = name {
    print("We got a user :\(name)")
} else {
    print("Nothing else")
}

func squareNumber(for number: Int) -> Int {
    return number * number
}

var number: Int? = nil
if let number = number {
    print(squareNumber(for: number))
}
 

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing out")
        return
    }

    print("\(number) x \(number) = \(number * number)")
}

let captains : [String: String] = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko",
    "Serenity": "Sandman"
]

let new = captains["Serenity", default: "N/A"]
print(new)

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let tvFavoriteShow = tvShows.randomElement() ?? "None"

struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
book = Book(title: "hell", author: "creation")
let author = book?.author?.first?.uppercased() ?? "A"
print(author)


let names: [String]? = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names?.randomElement()?.uppercased() ?? "No one"
print(chosen)


enum userError : Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw userError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("User: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"


        



