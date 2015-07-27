//
//  ViewController.swift
//  Lession 15
//
//  Created by Rashod Qaim on 7/22/15.
//  Copyright (c) 2015 Rashod Qaim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let counterID = "counterID"
    
    
    @IBOutlet weak var label: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
   
       
    
    
    
    }

    @IBAction func buttonAction(sender: UIButton) {
        
        let labelnumber = label.text?.toInt()
        if let lablenumber = labelnumber {
            
            let newNumber = labelnumber + 1
            
            label.text = "\(newNumber)"
        
        if let num = label.text?.toInt(){
            let defaults = NSUserDefaults.standardUserDefaults()
            defaults.setInteger(newNumber, forKey: counterID)
        }
        
    }
    
}
        
        override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    
    
    
    
    }


}

