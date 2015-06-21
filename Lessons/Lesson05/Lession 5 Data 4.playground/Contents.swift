class Car {
    var wheels: Int
    
    init(wheels: Int) {
        self.wheels = wheels
    }
}

struct Line {
    var length: Int
}

var myCar = Car(wheels: 4)
myCar.wheels = 10

var rashodCar = myCar
rashodCar.wheels = 6

myCar.wheels
rashodCar.wheels 

var myline = Line(length: 10)
myline.length = 20


var seconfline = myline
seconfline.length = 30

myline.length
seconfline.length

