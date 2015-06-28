import Foundation

func randomNumber () -> Int {
    return Int(arc4random_uniform(10) + 1)
}

let number = randomNumber()

switch number {
    case 1:
    println("Frist")
    break
    
    case 2:
    println("Second")
    break
}


