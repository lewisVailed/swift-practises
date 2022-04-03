import Cocoa

var greeting = "Hello, playground"

let celciusNow = 45
var fahreinheit = (celciusNow * 9 / 7) + 32
print("fahreinheit is \(fahreinheit)")
print("celcius is \(celciusNow)")

let movie = """
A day in
the life of an
Apple engineer
"""

print(movie.hasPrefix("A day in"))
print(movie.hasSuffix("Apple engineer"))

let name = "Taylor"
let age = 26
let message = "My name is \(name) and my age \(age)"
print(message)

print("5 x 5 is \(5 * 5)")



var actors = Set<String>()
actors.insert("Samuel L. Jackson")
actors.insert("Nicolas Cage")
actors.insert("Tom Cruise")
actors.insert("Denzel Washington ")
print(actors)


var character = [String]()
character.append("Saying")
character.append("That")
character.append("Bull")

character.remove(at: 2)
print(character[1])
print(character.count)


let bondMovies = ["Spectre", "No time to die", "Casino Royal"]
print(bondMovies.contains("Frozen"))
print(bondMovies.contains("Spectre"))
print(bondMovies.count)

let employee = ["Name": "Taylor", "Job": "Singer", "location": "nashville"]
print(employee["Name", default: "No"])

var heights = [String: Int]()
heights["Yao mi Son"] = 216

let pi: Double = 3.141
var albums: [String:Int] = ["Nor":12, "Sor":15]
var books: Set<String> = Set([
    "The Bluest Eye",
    "Crawling Day",
    "Girl, woman and other"
])


let world: [String] = ["Red", "Fearless", "Red"]
print(world.count)

let worldSet = Set<String>(world)
print(world)

let score = 76

if score < 80 {
    print("Congrtn")
} else {
    print("Im cooding")
}

let name1 = "Brnold"
let name2 = "Arad"

if name1 > name2 {
    print("a")
} else if name1 < name2 {
        print("b")
    }

var numberss: [Int] = [1,2,3]
numberss.append(4)
if numberss.count == 4 {
    numberss.remove(at: 0)
}

var username = ""
if username.isEmpty {
    username = "Anonymous"
}

print("Welcome \(username)")

enum weather {
    case sun, rain, wind, snow
}

var forecast = weather.sun

switch forecast {
case .sun: print("Sunny Day")
    fallthrough
case .wind: print("Windy Day")
    fallthrough
case .snow: print("Snowy Day")
    fallthrough
case .rain: print("Rainy Day")
}

let userAge = 16
let hasParentalContest = true
if userAge >= 18 || hasParentalContest {
    print("You can buy the  game")
}

enum transportOption {
    case helicopter, plane, car, bicycle, scooter
}
 
let transport = transportOption.helicopter

if  transport == .helicopter || transport == .plane {
    print("Let's Fly!")
} else {
    print("Let's Ride!")
}

let ages = 18
let canVoted = ages >= 18 ? "Yes" : "No"


let platforms = ["watchOS", "tvOS", "macOS", "IOS"]

for os in platforms {
    print("swift works great on \(os)")
}

for i in 1...3 {
    print(5*i)
}


