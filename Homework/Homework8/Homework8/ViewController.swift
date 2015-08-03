//
//  ViewController.swift
//  Homework8
//
//  Created by Rashod Qaim on 7/29/15.
//  Copyright (c) 2015 Rashod Qaim. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
    task2()
    
    
    }

    func task1() {
        Alamofire
            .request(.GET, "http://google.com")
            .response {
            (request, ResponseSerializer, data, error) -> Void in
            let source = NSString(data: data!, encoding: NSUTF8StringEncoding)
//            println(source)
        }
    }
    
    func task2() {
        Alamofire
            .request(.GET, "http://ksdnlksdlkfsfs.com")
            .response {(request, ResponseSerializer, data, error) -> Void in
                
                if let error = error {
                    println(error)
                }else {
                    println("no error")
                }
                }
        }
}

