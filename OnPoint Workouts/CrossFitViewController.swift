//
//  CrossFitViewController.swift
//  OnPoint Workouts
//
//  Created by Bret Boyer on 2/23/17.
//  Copyright © 2017 OnPoint Workouts. All rights reserved.
//

import UIKit

class CrossFitViewController: UIViewController {

    @IBAction func WODlink(_ sender: UIButton) {
        if let url = NSURL(string: "https://www.crossfit.com/workout/") {
            UIApplication.shared.openURL(url as URL) // unsure of compiler warning
        }
    
    }
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}