//
//  ViewController.swift
//  Lession 12
//
//  Created by Rashod Qaim on 7/13/15.
//  Copyright (c) 2015 Rashod Qaim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let squareA = UIView(frame: CGRectMake(20, 20, 80, 80))
        squareA.backgroundColor = UIColor.blackColor()
        view.addSubview(squareA)
     
        
        let squareBRect = CGRectMake(squareA.frame.origin.x + 100, squareA.frame.origin.y + 150
        , squareA.frame.width, squareA.frame.height)
        
        let squareB = UIView(frame: squareBRect)
        squareB.backgroundColor = UIColor.redColor()
        
        view.addSubview(squareB)
        
        let squareC = CGRectMake(squareB.bounds.origin.x,squareB.bounds.origin.y , squareB.bounds.width + 2, squareB.bounds.height + 2)
        
        view.addSubview(squareC)
    }


}

