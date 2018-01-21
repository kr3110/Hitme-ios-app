//
//  ViewController.swift
//  hitme
//
//  Created by Kevin Reinoso on 1/17/18.
//  Copyright © 2018 Kevin Reinoso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var scoreCount : Int = 1
    var roundCount : Int = 1
    var updatedScore : Int = 0
    var targetLabelNumber = Int(arc4random_uniform(100)+1)
    
    @IBOutlet weak var roundLabel: UILabel!
    @IBOutlet weak var targetLabel1: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var label: UILabel!
    @IBAction func slider(_ sender: UISlider) {
        label.text = String(Int(sender.value))
    } // sets the position value of the slider equal to to label.text so it can be displayed only for us. This value is hidden from the user that's playing the game
    
    
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
        roundLabel.text="1"
        scoreCount = 1
        roundCount = 1
    }
    
    @IBAction func hitMeButtonPressed(_ sender: UIButton) {
        updateTargetText()
    }
    func updateTargetText() {
        scoreCount = scoreCount + 1
        let sum = targetLabelNumber - (Int(sliderLabel.text!))!
        
        if (sliderLabel.text == String(targetLabelNumber)) {
            updatedScore = updatedScore + 10
        }
        else {
            if (abs(sum)==1) {
                updatedScore = updatedScore + 9
            }
            if (abs(sum)==2) {
                updatedScore = updatedScore + 8
            }
            if (abs(sum)==3) {
                updatedScore = updatedScore + 7
            }
            if (abs(sum)==4) {
                updatedScore = updatedScore + 6
            }
            if (abs(sum)==5) {
                updatedScore = updatedScore + 5
            }
            if (abs(sum)==6) {
                updatedScore = updatedScore + 4
            }
            if (abs(sum)==7) {
                updatedScore = updatedScore + 3
            }
            if (abs(sum)==8) {
                updatedScore = updatedScore + 2
            }
            if (abs(sum)==9) {
                updatedScore = updatedScore + 1
            }
            else { updatedScore = updatedScore + 0}
        }
        if (scoreCount==6) {
            updatedScore = 0
            scoreLabel.text = String(updatedScore)
            roundCount = roundCount + 1
            roundLabel.text = String(roundCount)
            scoreCount = 1
        }
        scoreLabel.text = String(updatedScore)
        print(updatedScore)
        targetLabelNumber = Int(arc4random_uniform(100)+1)
        targetLabel1.text = String(targetLabelNumber)
    }
    func information(_ sender: UIButton) {
       
    }
    
}

