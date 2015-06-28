//
//  ViewController.swift
//  AOL
//
//  Created by Rashod Qaim on 6/22/15.
//  Copyright (c) 2015 Rashod Qaim. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    @IBOutlet weak var sexField: UITextField!
    @IBOutlet weak var locationField: UITextField!
    @IBOutlet weak var clearButton: UIButton!
    @IBOutlet weak var submitButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setuptextField()
        setupButton ()

    }

    func setuptextField () {
        nameField.placeholder = "Name"
        ageField.placeholder = "Age"
        sexField.placeholder = "Sex"
        locationField.placeholder = "Location"
        
        formatTextField(nameField)
        formatTextField(ageField)
        formatTextField(sexField)
        formatTextField(locationField)
    }
    
    func formatTextField(field: UITextField) {
        field.keyboardType = (field == ageField) ? UIKeyboardType.NumberPad : UIKeyboardType.ASCIICapable
        field.textColor = (field == sexField) ? UIColor.redColor() : UIColor.blueColor()
    }
   
    func setupButton () {
        clearButton.setTitle("Clear", forState: UIControlState.Normal)
        submitButton.setTitle("Submit", forState: UIControlState.Normal)
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        println("prepare for Segue")
        if segue.identifier == "showProfile" {
            let destinationVC = segue.destinationViewController as! ProfileViewController
            destinationVC.age = ageField.text
            destinationVC.name = nameField.text
            destinationVC.sex  = sexField.text
            destinationVC.loaction = locationField.text
        }
    }
    
    @IBAction func clearFields(sender: UIButton) {
        nameField.text = nil
        ageField.text = nil
        sexField.text = nil
        locationField.text = nil
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

