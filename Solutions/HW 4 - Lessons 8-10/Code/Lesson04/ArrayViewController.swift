//
//  ViewController.swift
//  Lesson04
//
//  Created by Rudd Taylor on 9/28/14.
//  Copyright (c) 2014 General Assembly. All rights reserved.
//

import UIKit

class ArrayViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var Field: UITextField!
    @IBOutlet weak var tableview: UITableView!
    var array = [String]()
    let cellID = "cellID"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Field.delegate = self
        tableview.delegate = self
        tableview.dataSource = self
        tableview.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
        //        self.dismissViewControllerAnimated(false, completion: nil)
        self.dismissViewControllerAnimated(false, completion: { () -> Void in
            self.view.backgroundColor = UIColor.blueColor()
        })
        self.view.backgroundColor = UIColor.redColor()

    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
    }
}
        /*
        TODO one: Add a table view AND a text input box to this view controller, either in code or via the storyboard. Accept keyboard input from the text Feild when the return key is pressed. Add the string that was entered into the text view into an array of strings (stored in this class).
=======
class ArrayViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var field: UITextField!
    @IBOutlet weak var tableView: UITableView!
    var array = [String]()
    let cellID = "cellID"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        field.delegate = self
        tableView.delegate = self
        tableView.dataSource = self
        tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: cellID)
        
        
//        self.dismissViewControllerAnimated(false, completion: nil)
//        self.dismissViewControllerAnimated(false, completion: { () -> Void in
//            self.view.backgroundColor = UIColor.blueColor()
//        })
//        
//        self.view.backgroundColor = UIColor.redColor()
        /*
        TODO one: Add a table view AND a text input box to this view controller, either in code or via the storyboard. Accept keyboard input from the text field when the return key is pressed. Add the string that was entered into the text field into an array of strings (stored in this class).
>>>>>>> c59de2c5e244e5209bf434d2caa28078cbec9f13
        TODO two: Make this class a UITableViewDelegate and UITableViewDataSource that supply the above table view with cells. These cells should correspond to the text entered into the text box. E.g. If the text "one", then "two", then "three" was entered into the text box, there should be three cells in this table view that contain those strings in order.
        
        */
        
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        
        array.append(self.field.text)
        println(array)
        
        tableView.reloadData()
        
        return true
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID) as! UITableViewCell
        
        cell.textLabel?.text = array[indexPath.row]
        
        return cell
    }

    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        array.append(self.Field.text)
        println(array)
        
        return true
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
        
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        <#code#>
    }

}


