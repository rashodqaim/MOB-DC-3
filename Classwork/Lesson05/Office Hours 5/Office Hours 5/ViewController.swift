//
//  ViewController.swift
//  Office Hours 5
//
//  Created by Rashod Qaim on 6/21/15.
//  Copyright (c) 2015 Rashod Qaim. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    // Properties
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passWord: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpEmailField()
        setUpPassWordField()
        setUpButton()
  
    
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    func setUpButton() {
        loginButton.setTitle("Login", forState: UIControlState.Normal)
        
    }
    
    @IBOutlet weak var loginAction: UIButton!
    
    @IBAction func loginAction(horse: UIButton) {
        let homeViewController = UIViewController()
        navigationController?.pushViewController(homeViewController, animated: true)
    }
    
    func setUpEmailField() {
        emailField.placeholder = ("Email")
        emailField.keyboardType = UIKeyboardType.EmailAddress
    }
    
    func setUpPassWordField () {
        passWord.placeholder = ("Password")
        passWord.keyboardType = UIKeyboardType.Default
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

