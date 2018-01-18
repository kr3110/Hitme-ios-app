//
//  ViewController.swift
//  hitme
//
//  Created by Kevin Reinoso on 1/17/18.
//  Copyright © 2018 Kevin Reinoso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBAction func slider(_ sender: UISlider) {
        label.text = String(Int(sender.value))
        if (sliderLabel.text == label.text) {
            
        }
    }
    
    // random generator for number to hit needs to go somewhere here. If the target # and slider # are equal player's score increases by 10 points. If the player is within a range of 10 they'll get at least one point. If they are outside of it, they get 0.
    // score, also increases after it has been determined
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text="1"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reset(_ sender: UIButton) {
        scoreLabel.text="0"
    }
    @IBAction func information(_ sender: UIButton) {
       
    }
    
}

