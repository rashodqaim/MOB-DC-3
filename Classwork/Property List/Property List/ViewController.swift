//
//  ViewController.swift
//  Property List
//
//  Created by Rashod Qaim on 7/22/15.
//  Copyright (c) 2015 Rashod Qaim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var movieTextField: UITextField!
    
    @IBAction func Button(sender: UIButton) {
    
        var movie = movieTextField.text
        if let movie = movie {
            println("\(movie)")
        }
    
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        var movie = [movieTextField.text]
        
//        end edited
        
        return true
        
    }



}

