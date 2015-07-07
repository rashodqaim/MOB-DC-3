protocol Delegate {
    func shouldStartAWar()
    func shouldMaintainPeace()
}

class Country {
    
    var delegate: Spokesperson?
    
    func causeProblems() {
        if let delegate = delegate {
            delegate.shouldStartAWar()
        }
    }
    
    func solveProblems() {
        if let delegate = delegate {
            delegate.shouldStartAWar()
        }
    }
    
}

class Spokesperson: Delegate {
    
    func shouldStartAWar() {
        println("God created war so that Americans would learn geography. (Mark Twain)")
        println("Let's go to war!")
    }
    
    func shouldMaintainPeace() {
        println("Peace begins with a smile. (Mother Theresa)")
    }
}

let arthur = Spokesperson()
let usa = Country()
usa.delegate = arthur
usa.causeProblems()
