class Car {
    // Properties
    var wheels: Int
    var doors: Int
    var name: String
    
    // Initializer method (aka: Initalizer function)
    
    init(let wheels: Int, doors: Int, name: String) {
        self.wheels = wheels
        self.doors = doors
        self.name = name
    }
    // Normal Method 
    func drive() {
        println(self.wheels)
        println(wheels)
    }
}


let myCar = Car(wheels: 4, doors: 4, name: "BMW")


class Lamborghini: Car {
    var spoiler: Bool?
}

let diablo = Lamborghini(wheels: 4, doors: 4, name: "Diablo")
diablo.spoiler = true