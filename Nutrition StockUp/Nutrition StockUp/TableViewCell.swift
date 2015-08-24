//
//  TableViewCell.swift
//  Nutrition StockUp
//
//  Created by Rashod Qaim on 8/19/15.
//  Copyright (c) 2015 Rashod Qaim. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell, UINavigationControllerDelegate, UIImagePickerControllerDelegate {

    
    @IBOutlet weak var brandName: UILabel!
    @IBOutlet weak var nutritionButton: UIButton!
    @IBOutlet weak var Brands: UIButton!

    @IBAction func barcode(sender: UIButton) {
    
    
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
    
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    

}
