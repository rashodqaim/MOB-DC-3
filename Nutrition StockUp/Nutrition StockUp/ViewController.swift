//
//  ViewController.swift
//  Nutrition StockUp
//
//  Created by Rashod Qaim on 8/8/15.
//  Copyright (c) 2015 Rashod Qaim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    
    

    
    
    
    
    
    
    
    
    //    var productNames: [String: String]!
//    
//    override func viewDidLoad() {
//                super.viewDidLoad()
//                // Do any additional setup after loading the view, typically from a nib.
//    
//    
//    productNames = ["Lays": "Calories 160", "Snickers": "Calories 215", "Sabra Hummus": "Calories 70"]
//    }
//    
//    
//        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//            return Int()
//    
//            
//            
//            func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//                let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! UITableViewCell
//                cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
//                return cell
//            }
//            
//            
//             func tableView(tableview: UITableView, titleForHeaderInSection: Int) -> String? {
//                return "Section \(section)"
//            }
//            
//            
    
    
    //
//    var objects: NSMutableArray! = NSMutableArray()
//    
//    
//    
//    
//    
//    
////    var alphabet = ["A","B","C"]
////    
//
//    
//    self.objects.addObject("Lays Potato")
//    self.objects.addObject("Snickers")
//    self.objects.addObject("Sabra Hummus")
//        
//        
//    }
//    
//    
//    
//    

//    }
//    
//
//    
//        cell.brandName.text = self.objects.objectAtIndex(indexPath.row) as! String
//        
//        cell.nutritionButton.tag = indexPath.row
//        
//        cell.nutritionButton.addTarget(self, action: "findFact", forControlEvents: nil)
//        
//        return cell
//    
//    
//    }
//    
//    func fun1(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        self.performSegueWithIdentifier("showView", sender: self)
//        
//        
//    }
//    
//    func findFact(sender: UIButton) {
//        
//        
//        let healthfacts = self.objects.objectAtIndex(sender.tag) as! String
//        
//        let first = "\(healthfacts)"
//        
//        let activity: UIActivityViewController = UIActivityViewController(activityItems: [first], applicationActivities: nil)
//        
//        self.presentViewController(activity, animated: true, completion: nil)
//        
//        
//    }
//    
//    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        let the = UITableView
//        
//        if (segue.identifier == "showview") {
//        
//            
//        
//            var upcoming: NutritionFactsViewController = segue.destinationViewController as! NutritionFactsViewController
//            
//            let finish = self.fun1(the, didSelectRowAtIndexPath: <#NSIndexPath#>)
//            
//            let healthfacts = self.objects.objectsAtIndexes(indexPath.row) as? String
//            
//            upcoming.healthfacts = healthfacts
//            
//            self.fun1.deselectRowAtIndexPath(finished, animated: true)
//            
//        }
//    }
//
//    
//}
//    
//    
//    
//    
//    
////
////    
////    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
////        return alphabet.count
////    }
////    
////    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
////        let cell: AnyObject = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath)
////        cell.brandsAlphabetButton.text = alphabet[indexPath.row]
////        
////        return cell as! UICollectionViewCell
////        
////    }
////    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
////        println("Cell \(indexPath.row) Selected")
////    }
////}
////
//
    }
