//
//  ViewController.swift
//  Yeezy Taught Me
//
//  Created by Rohit Tigga on 11/9/15.
//  Copyright © 2015 Rohit Tigga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var OversetView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //set Kanye Wallpaper as the background
        OversetView.backgroundColor = UIColor(patternImage: UIImage(named: "KanyeWallpaper.jpg")!)
        OversetView.alpha = 0.5
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

