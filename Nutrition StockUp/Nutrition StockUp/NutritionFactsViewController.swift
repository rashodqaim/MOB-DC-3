//
//  NutritionFactsViewController.swift
//  Nutrition StockUp
//
//  Created by Rashod Qaim on 8/19/15.
//  Copyright (c) 2015 Rashod Qaim. All rights reserved.
//

import UIKit

class NutritionFactsViewController: UIViewController {

    @IBOutlet weak var facts: UILabel!
    
    var healthfacts: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.facts.text = self.healthfacts

        // Do any additional setup after loading the view.
    }

   
    
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
