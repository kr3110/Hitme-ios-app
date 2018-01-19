//
//  ViewController.swift
//  hitme
//
//  Created by Kevin Reinoso on 1/17/18.
//  Copyright © 2018 Kevin Reinoso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var updatedScore : Int = 0
    var targetLabelNumber = Int(arc4random_uniform(100)+1)

    @IBOutlet weak var targetLabel1: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBAction func slider(_ sender: UISlider) {
        label.text = String(Int(sender.value))
    } // this is only here for testing, I will delete once I figure out how to do abs value
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        targetLabel1.text = String(targetLabelNumber)
        scoreLabel.text="0"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func reset(_ sender: UIButton) {
        scoreLabel.text="0"
    }
    
    @IBAction func hitMeButtonPressed(_ sender: UIButton) {
        updateTargetText()
    }
    func updateTargetText() {
        if (sliderLabel.text == String(targetLabelNumber)) {
            updatedScore = updatedScore + 10
        }
        else {
            if (targetLabelNumber-Int(sliderLabel.text!)!==1) {
                updatedScore = updatedScore + 9
            }
            if (targetLabelNumber-Int(sliderLabel.text!)!==2) {
                updatedScore = updatedScore + 8
            }
            if (targetLabelNumber-Int(sliderLabel.text!)!==3) {
                updatedScore = updatedScore + 7
            }
            if (targetLabelNumber-Int(sliderLabel.text!)!==4) {
                updatedScore = updatedScore + 6
            }
            if (targetLabelNumber-Int(sliderLabel.text!)!==5) {
                updatedScore = updatedScore + 5
            }
            if (targetLabelNumber-Int(sliderLabel.text!)!==6) {
                updatedScore = updatedScore + 4
            }
            if (targetLabelNumber-Int(sliderLabel.text!)!==7) {
                updatedScore = updatedScore + 3
            }
            if (targetLabelNumber-Int(sliderLabel.text!)!==8) {
                updatedScore = updatedScore + 2
            }
            if (targetLabelNumber-Int(sliderLabel.text!)!==9) {
                updatedScore = updatedScore + 1
            }
            else { updatedScore = updatedScore + 0}
        }
        scoreLabel.text = String(updatedScore)
        print(updatedScore)
        targetLabelNumber = Int(arc4random_uniform(100)+1)
        targetLabel1.text = String(targetLabelNumber)
    }
    func information(_ sender: UIButton) {
       
    }
    
}

