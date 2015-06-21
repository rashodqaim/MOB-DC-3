// Camel Casing: camelCasing

// Function named myFunction that takes no parameters and returns no values
func myFunction () {
    println("hey, i am in my function")
}

myFunction()


func aMoreComplexFunction(number: Int) {
    for i in 1...number { println(i)
    }
    println("stop")
}

aMoreComplexFunction(5)
aMoreComplexFunction(6)

func hare(age: Int, name: String) {
    println("My name is \(name) and I am \(age) years old")
}

hare(25, "Rashod")

func functionWithOptional(age: Int, name: String, location: String?) {
    println("My name is \(name) and I am \(age) years old")
    
    if let location = location {
        println("...and I am from \(location)")
    }
}
functionWithOptional(25, "Rashod", "Washingtion DC")

func cat(name: String) -> String {
    let sent = "My cant's name is \(name) and it goes meow"
    return sent
}

let myCat = cat("Charles")
println(myCat)

println(cat("Dan"))

func lastFunction(alpha: Int, beta: Int, name: String, decimal: Float?) {
    for number in alpha...beta {
        
        println("My name is \(name) and I have \(number) Finger!")
        println("I have $\(decimal) in the bank")
        }
    }
lastFunction(1, 10, "Rashod", 3.00)
lastFunction(1, 4, "luck", 4.00)

