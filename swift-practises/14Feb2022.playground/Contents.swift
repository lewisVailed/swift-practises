import Cocoa

var greeting = "Hello, playground"

struct Employee {
    let name : String
    var vacationAllocated : Int
    var vacationTaken : Int = 0
    
    init(name: String, vacationAllocated: Int) {
        self.name = name
        self.vacationAllocated = vacationAllocated
    }
    
    var vacationRemaining : Int {
        get {
        vacationAllocated - vacationTaken
    }
        set {
        vacationAllocated = 5*vacationTaken + newValue
    }
  }
}

var archer = Employee(name: "Adam", vacationAllocated: 15)
archer.vacationTaken += 5
print(archer.vacationRemaining)
archer.vacationRemaining = 3
print(archer.vacationAllocated)
print(archer.vacationRemaining)

struct Game {
    var score: Int = 0 {
        didSet {
            print("Your score is \(score)")
        }
    }
}

var proc = Game()
proc.score += 5

struct App {
    var contacts: [String] = [] {
        willSet {
            print("Current value is: \(contacts)")
            print("New value is: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Well, actually")
app.contacts.append("Not Sure")
app.contacts.append("Whooo")


struct Player {
    var name: String
    var number: Int
    
    init(name:  String) {
        self.name = name
        number = Int.random(in: 1...20)
    }
}

var player = Player(name: "Carl")
print(player.number)

struct BankAccount {
    public private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withdraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 200)

var success = account.withdraw(amount: 199)
if success {
    print("Withdraw money succesfully")
} else {
    print("Failed to get the money")
}

struct Employeee {
    let name: String
    let password: Int
    
    static let example = Employeee(name: "Bla", password: 2353)
}

print(Employeee.example)




enum gearShift {
    case up, down
}

struct Car {
    let model : String
    let numberOfSeats : Int
    private(set) var gear: Int = 5
    
    mutating func shiftGear(_ action: gearShift) {
        switch action {
        case.up:
            gear < 10 ? gear += 1 : print("You can't gear shift to a higher gear!")
        case.down:
            gear > 10 ? gear -= 1 : print("You can't gear shift to a lower gear!")
        }
    }
}

var citroen = Car(model: "C5", numberOfSeats: 5)
citroen.shiftGear(.up)
print(citroen.gear)
