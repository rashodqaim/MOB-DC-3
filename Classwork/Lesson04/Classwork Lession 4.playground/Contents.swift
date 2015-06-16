// Optionals
var y: Int? = nil
y = 10

var age: Int?
age = 10

// Optional Binding
if let unwrappedage = age {
    "the person is \(unwrappedage) years old"
} else {
    "the variable, age, was not set"
}

// Forced Unwrapping
var name: String? // = nil
if let name = name {
    println("name: \(name)")
}


// Function

