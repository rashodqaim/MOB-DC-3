//
//  ProfileViewController.swift
//  AOL
//
//  Created by Rashod Qaim on 6/22/15.
//  Copyright (c) 2015 Rashod Qaim. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController
{

    var name: String?
    var age: String?
    var sex: String?
    var loaction: String?
    
    @IBOutlet weak var nameFeild: UILabel!
    @IBOutlet weak var sexFeild: UILabel!
    @IBOutlet weak var ageField: UILabel!
    @IBOutlet weak var locationFeild: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            nameFeild.text = name
    
    }
        if let age = age {
            ageField.text = age
        }
        if let sex = sex {
            sexFeild.text = sex
        }
        if let location = loaction {
            locationFeild.text = loaction
        }
    
        }
}