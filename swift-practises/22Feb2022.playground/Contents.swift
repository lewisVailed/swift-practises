import Cocoa

var greeting = "Hello, playground"

class User {
    var id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive")
    }
    
    deinit {
        print("User \(id): I'm dead")
    }
}

var users = [User]()

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm controlling now")
    users.append(user)
}

users.removeAll()

class Userr {
    var name = "Paul"
}
let user = Userr()
print(user.name)

user.name = "Taylor"
print(user.name)

class Animals {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dogs : Animals {
    func speak() {
        print("hey")
    }
}

final class Corgi: Dogs {
    override func speak() {
        print("whaw, haw")
    }
}

final class Poodle : Dogs {
    class Corgi: Dogs {
        override func speak() {
            print("whoww, whowww..")
        }
    }
}

class Cats: Animals {
    let isTame: Bool
    func speak() {
            print("original meow sound")
    }
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
}

final class Persian : Cats {
    override func speak() {
        print("Hrrr")
    }
}

final class Lion : Cats {
    override func speak() {
        print("Hrrr..")
    }
}

let corgi = Corgi(legs: 4)
print(corgi.legs)
print(corgi.speak())

let persian = Lion(isTame: true)

print(persian.speak())


protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int ) -> Int
    func travel(distance: Int)
}

protocol canBeElectric {
    
}

struct Car: Vehicle, canBeElectric {
    let name = "Car"
    var currentPassengers = 2
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    func travel(distance: Int) {
        print("I'm driving \(distance)")
    }
    func openRoof() {
        print("It's a nice day")
    }
}

struct Bicycle: Vehicle {
    let name = "Bike"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
     }
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
    }
}

func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow!")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle] , distance: Int) {
    for vehicle in vehicles {
        print("\(vehicle.name): \(vehicle.estimateTime(for: distance)) time to travel \(distance)km")
    }
}

let car = Car()
commute(distance: 10000, using: car)

let bike = Bicycle()
commute(distance: 1000, using: bike)

getTravelEstimates(using: [car, bike], distance: 200)

func getRandomNumber() -> some Equatable {
    Int.random(in: 1...6)
}

print(getRandomNumber() == getRandomNumber())
