//
//  NutritionFactsViewController.swift
//  Nutrition StockUp
//
//  Created by Rashod Qaim on 8/19/15.
//  Copyright (c) 2015 Rashod Qaim. All rights reserved.
//

import UIKit

class NutritionFactsViewController: UITableViewController {

    var Nutrition = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

   
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Nutrition.count
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = self.tableView.dequeueReusableCellWithIdentifier("NutritionCell", forIndexPath: indexPath) as! UITableViewCell
        
        
        cell.textLabel?.text = Nutrition[indexPath.row]
        
        
        
        return cell
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