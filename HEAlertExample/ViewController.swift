//
//  ViewController.swift
//  HEAlertExample
//
//  Created by hsoi on 5/8/15.
//  Copyright (c) 2015 Hsoi Enterprises LLC. All rights reserved.
//

import UIKit
import HEAlert

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func showAlert(sender: AnyObject) {
        HEAlert.ok("This Is An Alert", presentingViewController: self) { (_) -> Void in
            HEAlert.other("Another Alert", message: "This alert is comes from the buttonHandler of the first alert", buttonTitle: "Cool!", presentingViewController: self)
        }
    }
}

