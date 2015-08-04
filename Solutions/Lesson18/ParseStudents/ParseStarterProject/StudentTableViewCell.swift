//
//  StudentTableViewCell.swift
//  ParseStarterProject
//
//  Created by LOANER on 8/3/15.
//  Copyright (c) 2015 Parse. All rights reserved.
//

import UIKit
import Parse

class StudentTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    @IBOutlet weak var userImage: UIImageView!
    
    var student: PFObject? {
        didSet {
            nameLabel.text = student!["student_name"] as? String
            locationLabel.text = student!["student_location"] as? String
            
            if let file = student!["image"] as? PFFile {
                file.getDataInBackgroundWithBlock({ (data, error) -> Void in
                    if error != nil {
                        println("could not get image data")
                        return
                    }
                    
                    self.userImage.image = UIImage(data: data!)
                })
            }
        }
    }

}
