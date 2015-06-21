class Car {
    var wheels: Int
    var doors: Int
    var name: String
    
    // Initializer method (aka: Initalizer function)
    
    init() {
        wheels = 4
        doors = 4
        name = "Kia"
    }
}


//myCar is an object, or an instance of Car()
var myCar = Car()

//GETTING the vale from the property 'Wheels'
println(myCar.wheels)

//GETTING the vale from the property 'name'
println(myCar.name)

//SETTING the value of "Name" from kia to BMW
myCar.name = "BMW"
println(myCar.name)

var michellesCar = Car()
michellesCar.name = "BMW"

