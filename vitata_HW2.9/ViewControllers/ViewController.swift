//
//  ViewController.swift
//  vitata_HW2.9
//
//  Created by Andrew on 6/17/20.
//  Copyright © 2020 APNET HQ LLC. All rights reserved.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var movingView: SpringView!
    @IBOutlet var movingViewLabel: SpringLabel!
    @IBOutlet var movingButtonOutlet: SpringButton!
    
    var animation = Animation.getRandomOne()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // initial values set up
        movingViewLabel.text = "Click the Button below to start random Animation"
        movingButtonOutlet.setTitle("\(animation.preset) + \(animation.curve)", for: .normal)
    }
    
    
    @IBAction func movingButtonClicked(_ sender: SpringButton) {
        
        //let nextAnimation = Animation.getRandomOne()
        
        movingView.animation = animation.preset
        movingView.curve = animation.curve
        movingView.force = animation.force
        movingView.duration = animation.duration
        movingView.rotate = animation.rotate
        movingView.animate()
        
        movingViewLabel.text = "\(animation.preset) + \(animation.curve)\rforce = \(round(100*animation.force)/100)\rduration = \(round(100*animation.duration)/100)\rrotate = \(round(100*animation.rotate)/100)"
        
        animation = Animation.getRandomOne()
        
        movingButtonOutlet.setTitle("\(animation.preset) + \(animation.curve)", for: .normal)
        
        //sender.animate()
        
    }
    


}

