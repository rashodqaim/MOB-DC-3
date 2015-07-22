//
//  ViewController.swift
//  lession 12 code
//
//  Created by Rashod Qaim on 7/13/15.
//  Copyright (c) 2015 Rashod Qaim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let errorlabel = UILabel()
        errorlabel.setTranslatesAutoresizingMaskIntoConstraints(false)
        errorlabel.text = "we could not find your email address"
        errorlabel.textColor = UIColor.redColor()
        errorlabel.backgroundColor = UIColor.greenColor()
        view.addSubview(errorlabel)
        
        let leftConstraint = NSLayoutConstraint(item: errorlabel,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1.0, constant: 0)
        
        
        let topConstraint = NSLayoutConstraint(item: errorlabel,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0, constant: 0)
        
        leftConstraint.active = true
        topConstraint.active = true
        
        }
    }

