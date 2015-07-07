protocol Automotive {
    func drive()
    func honk()
    func turnOnLights()
}

class car: Automotive {
    func drive() {
        
    }
    func honk() {
        
    }
    func turnOnLights() {
        
    }
}

class train: Automotive {
    func drive() {
        
    }
    func honk() {
        
    }
    func turnOnLights() {
        
    }
}

let honda = car ()
let porsche = car ()
let thomas = train()

var array = [Automotive]()
array.append(honda)
array.append(porsche)
array.append(thomas)





//Delegetions 

protocol Delegate {
    func startAWar()
    func makePeace()
}


class Country {
    
    var delegate: Spokesperson?
    
    func causeProblems() {
        if let delegate = delegate {
            delegate.startAWar()
        }
    }
    func fixProoblem() {
        if let delegate = delegate {
            
    
            delegate.makePeace()
        }
    }
}

class person {

}

class Spokesperson: person, Delegate {
    func startAWar() {
        
    }
    func makePeace() {
        
    }
    
}

let handy = Spokesperson()
let kris = Spokesperson()
let kate = Spokesperson()
let france = Country()
france.delegate = [handy,kris,kate]
france.causeProblems()
