import Cocoa

var greeting = "Hello, playground"

var employee = ["Taylor Swift", "Singer", "Nashville"]
print("Name: \(employee[0])")
print("Job title: \(employee[1])")
print("Location: \(employee[2])")

employee.append("craw")
employee.remove(at: 2)


var employee2 = ["name": "Taylor Swift", "Job title": "Singer", "Location": "Nashville"]
print(employee2["names", default: "Unknown"])
print(employee2["name", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janairo",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Jim"] = 219
heights["Karl"] = 199

print(olympics[0, default: "Unknown"])

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Archer"
archEnemies["Batman"] = "Penguin"
archEnemies["Crawler"] = "Taken"

print(archEnemies["set", default: "Unknown"])

var emplooyes = ["tellNot", "tellEm", "tellSuck"]

