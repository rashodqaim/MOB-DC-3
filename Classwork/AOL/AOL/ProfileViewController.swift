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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = name {
            nameFeild.text = name
        // Do any additional setup after loading the view.
    }

     func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        }
    }
    

}
