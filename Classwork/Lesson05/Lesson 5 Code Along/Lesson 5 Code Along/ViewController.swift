//
//  ViewController.swift
//  Lesson 5 Code Along
//
//  Created by LOANER on 6/17/15.
//  Copyright (c) 2015 Thomas Degry. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var factLabel: UILabel!
    @IBOutlet weak var generateButton: UIButton!
    
    var numberOfTime = 0
    var myFactbook = Factbook()
    var myColorWheel = colorWheel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        factLabel.text = "hello"
    }

    @IBAction func generateFact(sender: UIButton) {
   //     ++numberOfTime
  //      factLabel.text = "Hit \(numberOfTime) time"
        let ramdonFact = myFactbook.randomFact()
        factLabel.text = ramdonFact
        
        let randomColor = myColorWheel.randomColor()
        view.backgroundColor = randomColor
        
        generateButton.setTitleColor(randomColor, forState: UIControlState.Normal)
        generateButton.backgroundColor = randomColor
    
    }

}

