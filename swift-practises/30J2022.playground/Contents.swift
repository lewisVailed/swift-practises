import Cocoa

var greeting = "Hello, playground"

let id = Int.random(in: 1...1000)

print(id)


let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
    }
    
    if multiples.count == 10 {
        break
    }
        
}
print(multiples)


let filenames = ["wheres.jpg", "yesnt.d", "what.jpg"]
for filename in filenames {
    if filename.hasSuffix(".jpg") != true {
        continue
    }
    print(filename)
}

for i in 1...100 {
    if  i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    } else if i.isMultiple(of: 3) {
        print("Fizz")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}
