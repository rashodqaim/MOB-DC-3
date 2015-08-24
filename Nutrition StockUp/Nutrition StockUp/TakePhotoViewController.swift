//
//  TakePhotofile.swift
//  Nutrition StockUp
//
//  Created by Rashod Qaim on 8/23/15.
//  Copyright (c) 2015 Rashod Qaim. All rights reserved.
//

import Foundation
import UIKit

class TakePhotoViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    var imagePicker: UIImagePickerController!
    
    
    @IBOutlet weak var imageView: UIImageView!
    
    
    @IBAction func TakePhoto(sender: UIButton) {
    
        imagePicker = UIImagePickerController()
        
        imagePicker.delegate = self
        
        imagePicker.sourceType = .Camera
        
        presentViewController(imagePicker, animated: true, completion: nil)
    
    }
    

    
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        imagePicker.dismissViewControllerAnimated(true, completion: nil)
        
        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
    }
    
    
//
//    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo image: UIImage!, editingInfo: [NSObject : AnyObject]!) {
//        imagePicker.dismissViewControllerAnimated(true, completion: nil)
//        
//        imageView.image = info[UIImagePickerControllerOriginalImage] as? UIImage
//    }
    
    
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}





