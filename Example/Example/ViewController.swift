//
//  ViewController.swift
//  Example
//
//  Created by Luis Padron on 9/16/16.
//  Copyright © 2016 Luis Padron. All rights reserved.
//

import UIKit
import UICircularProgressRing
                                        // If you'd prefer to use a delegate then you can implement it and override func finishedUpdatingProgressFor(_ ring: UICircularProgressRingView)
class ViewController: UIViewController, UICircularProgressRingDelegate  {
    

    @IBOutlet weak var ring1: UICircularProgressRingView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Customize some properties
        ring1.animationStyle = kCAMediaTimingFunctionLinear
        ring1.font = UIFont.systemFont(ofSize: 70)
        ring1.setProgress(innerValue: 0, outerValue: 0, animationDuration: 0, completion: nil)
    }
    
    // Button clicked, animate them views
    @IBAction func animateTheViews(_ sender: AnyObject) {
        // Animate the view
        ring1.animationStyle = kCAMediaTimingFunctionLinear
        ring1.startAngle = -90
        ring1.setProgress(innerValue: 99, outerValue: 50, animationDuration: 2, completion: nil)
    }
    
    // The delegate method!
    func finishedUpdatingProgress(forRing ring: UICircularProgressRingView) {
        if ring === ring1 {
            print("From delegate: Ring 1 finished")
        }
    }
    
}

