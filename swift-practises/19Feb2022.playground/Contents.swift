import Cocoa

var greeting = "Hello, playground"

class Game {
    var score = 0 {
        didSet {
            print("Score is \(score)")
        }
    }
}

var game = Game()
game.score += 10


class Employee {
    private(set) var hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }

    func printSummary() {
        print("I'm working \(hours) in a day")
    }
}

final class Developer : Employee {
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() {
        print("I'm always working if I'm not tired")
    }
}
 
final class Manager : Employee {
    func work() {
        print("I'm going to meeting for \(hours) hours.")
    }
}

let robert = Developer(hours: 10)
let joseph = Manager(hours: 8)
robert.work()
joseph.work()

robert.printSummary()
joseph.printSummary()

class Vehicles {
    let isElectric: Bool
    
    init(isElectric: Bool) {
        self.isElectric = isElectric
    }
}

class Car : Vehicles {
    let convertable: Bool
    
    init(isElectric: Bool, convertable: Bool) {
        self.convertable = convertable
        super.init(isElectric: isElectric)
    }
}

class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1.copy()

