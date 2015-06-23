// Class

class ReferenceTypeExample {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

let exampleA = ReferenceTypeExample(name: "Rashod")
let exampleB = exampleA
exampleB.name = "Steve"
exampleA



//Struct

struct ValueTypeExample {
    var name: String
}

var valueExampleA = ValueTypeExample(name: "Rashod")
var valueExampleB = valueExampleA
valueExampleB.name = "Steve"
valueExampleA

