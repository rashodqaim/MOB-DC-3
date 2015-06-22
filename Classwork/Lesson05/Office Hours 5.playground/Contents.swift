class officeHour {
    // Properties 
    let time: Int
    var students: Int
    
    // Method
    init(time: Int, students: Int){
        self.time = time
        self.students = students
    }
}


let oh = officeHour(time: 1400, students: 3)

// Getter
oh.students

// Setter
oh.students = 4
