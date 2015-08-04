//
//  StudentsTableViewController.swift
//  ParseStarterProject
//
//  Created by LOANER on 8/3/15.
//  Copyright (c) 2015 Parse. All rights reserved.
//

import UIKit
import Parse

class StudentsTableViewController: UITableViewController, AddStudentDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // Array with all the students
    var students = [PFObject]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        refreshTable(UIRefreshControl())
    }
    
    @IBAction func selectPhoto(sender: UIBarButtonItem) {
        if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.PhotoLibrary) {
            let imagePicker = UIImagePickerController()
            imagePicker.allowsEditing = true
            imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
            imagePicker.delegate = self
            self.presentViewController(imagePicker, animated: true, completion: nil)
        }
    }
    
    // MARK: - UIImagePickerDelegate methods
    func imagePickerController(picker: UIImagePickerController,
        didFinishPickingImage image: UIImage!,
        editingInfo: [NSObject : AnyObject]!) {
            self.dismissViewControllerAnimated(true, completion: { () -> Void in
                let newImage = PFObject(className: "Student")
                newImage["student_name"] = "foo"
                newImage["student_location"] = "bar"
                
                let imageData = UIImagePNGRepresentation(image)
                let pfImage = PFFile(name: "photo", data: imageData)
                
                newImage["image"] = pfImage
                
                newImage.saveInBackgroundWithBlock { (success, error) -> Void in
                    if error != nil {
                        println("Could not save image \(error?.localizedDescription)")
                        return
                    }
                    
                    println("Did save picture")
                }
            })
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "addStudent" {
            let destinationVC = segue.destinationViewController as! UINavigationController
            let addVC = destinationVC.topViewController as! AddStudentViewController
            
            addVC.delegate = self
        }
    }
    
    func addStudent(name: String, location: String) {
        let newStudent = PFObject(className: "Student")
        newStudent["student_name"] = name
        newStudent["student_location"] = location
        newStudent.saveInBackgroundWithBlock { (success, error) -> Void in
            if error != nil {
                println("Could not save object with error \(error?.localizedDescription)")
                return
            }
            
            println("Saved student in background")
            self.students.append(newStudent)
            self.tableView.reloadData()
        }
    }
    
    @IBAction func refreshTable(sender: UIRefreshControl) {
        // Go to parse
        let query = PFQuery(className: "Student")
        query.orderByDescending("updatedAt")
//        query.whereKey("student_name", containsString: "ho")
        query.findObjectsInBackgroundWithBlock { (results, error) -> Void in
            if error != nil {
                println("could not grab students from parse")
                return
            }
            
            self.students = results as! [PFObject]
            sender.endRefreshing()
            
            self.tableView.reloadData()
        }
    }

    // MARK: - Table view data source
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("studentCell", forIndexPath: indexPath) as! StudentTableViewCell

        let currentStudent = students[indexPath.row] // PFObject
        cell.student = currentStudent
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
