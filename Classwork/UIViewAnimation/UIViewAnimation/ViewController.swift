//
//  ViewController.swift
//  UIViewAnimation
//
//  Created by Rashod Qaim on 8/10/15.
//  Copyright (c) 2015 Rashod Qaim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var square: UIView!

    @IBAction func animate(sender: UIBarButtonItem) {
    if sender.title! == "Fade Out"{
        UIView.animateWithDuration(0.5, animations: {() -> Void in
            self.square.alpha = 0
        })
    }else if sender.title! == "Fade In" {
        UIView.animateWithDuration(0.5, delay: 1.0, options: UIViewAnimationOptions(), animations:{ () -> Void in
            self.square.alpha = 1
            self.square.backgroundColor = UIColor.yellowColor()
            }, completion: nil)
    }else if sender.title! == "Scale Down" {
        UIView.animateWithDuration(0.3, animations: {() -> Void in
            self.square.transform = CGAffineTransformMakeScale(0.5, 0.5)
            })
    }else if sender.title == "Scale Up" {
        UIView.animateWithDuration(0.7, delay: 0.0, usingSpringWithDamping: 0.8, initialSpringVelocity: 20.0, options: UIViewAnimationOptions(), animations: { () -> Void in self.square.transform = CGAffineTransformMakeScale(1.0, 1.0);)
        }, completion: nil)
    } else if sender.title == "Move" {
        square.alpha = 200
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            self.view.layoutIfNeeded()
        })
        }
    }
}