var name: String = "Rashod"

var age: Int = 1


println("hello \(name), you \(age) years old")


if age > 21 {
    println("you can drink")
}

if age > 18 {println("you can vote")}

if age > 16 {println("you can drive")}

if age >= 18 && age >= 16 {println("You Can Drive, and Vote")} else {println("you can only Drive")}

if age >= 16 && age < 18 {
println("Drive")
} else if age >= 18 && age < 21 {
println("drive and Vote")
} else if age >= 21 {
    println("Drive vote and Drink")
} else {println("Nothig fun")}





