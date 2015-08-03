//
//  StudentStore.swift
//  Students
//
//  Created by Rashod Qaim on 7/27/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit
import CoreData

class StudentStore {
    static let sharedStore = StudentStore()
    
    var context: NSManagedObjectContext
    
    init() {
        println("student name")
        
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        context = appDelegate.managedObjectContext!
    }
    func addStudent(name: String, location: String) {
        let newStudent = NSEntityDescription.insertNewObjectForEntityForName("Student", inManagedObjectContext: context) as! Student
        newStudent.name = name
        newStudent.location = location
        
        
        var error: NSError?
        context.save(&error)
        
        if error != nil {
            println("an error occured while adding a student")
        }
    }
    
    func getAllStudent() -> [Student] {
        let sortDescriptor = NSSortDescriptor(key: "name", ascending: true)
        let fetchRequest = NSFetchRequest(entityName: "Student")
        
        var error: NSError?
        let results = context.executeFetchRequest(fetchRequest, error: &error) as! [Student]
        
        if error != nil {
            println("an error occured while adding a student")
        }
        
        return results
    }

    func removeStudent(student: Student) {
        context.deleteObject(student)
        context.save(nil)
    }
}