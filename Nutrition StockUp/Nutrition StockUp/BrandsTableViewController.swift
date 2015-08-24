//
//  BrandsTableViewController.swift
//  Nutrition StockUp
//
//  Created by Rashod Qaim on 8/19/15.
//  Copyright (c) 2015 Rashod Qaim. All rights reserved.
//

import UIKit

class BrandsTableViewController: UITableViewController {
    
    
    var data = [String]()
    
    
    var Nutrition = [BrandNutrition]()

    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        data = ["Lays", "Sinkers", "Sabra Hummus"]
        
        Nutrition = [BrandNutrition(secondTitle:["Calories 160", "Total Fat 10g", "Sodium 170mg"], Pic:""),BrandNutrition(secondTitle:["Calories 218", "Total Fat 7.22g", "Sodium 254mg"], Pic:""),BrandNutrition(secondTitle:["Calories 90", "Total Fat 8g", "Sodium 90mg"], Pic:"")]
    
    }
    
    

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

  
    

//    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        // #warning Incomplete method implementation.
//        // Return the number of rows in the section.
//        return 5
//    }
    
//        
//        override func tableView(tableview: UITableView, titleForHeaderInSection section: Int) -> String? {
//            return "Section \(section)"
//        }
    

     override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        var indexPath: NSIndexPath = self.tableView.indexPathForSelectedRow()!
        
        var DestViewControllor = segue.destinationViewController as! NutritionFactsViewController
        
        var BrandNut: BrandNutrition
        
        BrandNut = Nutrition[indexPath.row]
        
        DestViewControllor.Nutrition = BrandNut.secondTitle
        
        
    }
    
    
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...

        return cell
    }
    */

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
