//
//  ViewController.swift
//  BullsEye
//
//  Created by Alyssa Ma on 2/28/21.
//

import UIKit

class ViewController: UIViewController {
    //var to keep track of slider value, slider starts at 1
    var currentValue: Int = 0
    //outlet to store a reference to the slider
    @IBOutlet var slider: UISlider!
    //store the target value
    var targetValue = 0
    //store score
    var score = 0
    //keep track of rounds
    var round = 0
    //change target label
    @IBOutlet var targetLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var roundLabel: UILabel!
    
    //runs only on app startup
    override func viewDidLoad() {
        super.viewDidLoad()
        //start a new game round
        startNewRound()
        /**
        // Do any additional setup after loading the view.
        //initialize the value to what the slider value is
        currentValue = lroundf(slider.value)
        //set target value to a random int from 1 to 100
        targetValue = Int.random(in: 1...100)
         */
    }

    //alert display functionality
    @IBAction func showAlert()
    {
        //calculate difference between player value and target value
        let difference = abs(targetValue - currentValue)
        //calculate the number of points, is a variable because of bonus points
        var points = 100 - difference
        
        //alert messages based on points
        let title: String
        if difference == 0
        {
            title = "Perfect!"
            //add bonus points for a perfect
            points += 100
        }
        else if difference < 5
        {
            title = "You almost had it!"
            //bonus points for only being 1 off
            if difference == 1
            {
                points += 50
            }
        }
        else if difference < 10
        {
            title = "Pretty good!"
        }
        else
        {
            title = "Not even close..."
        }
        //add points to total score
        score += points
        //message of how many points player got
        let message = "You scored \(points) points"
        
        //creates iphone alert that shows message that has the filled title and message
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert)
        //button to reply
        let action = UIAlertAction(
            title: "OK",
            style: .default,
            handler: nil)
        //adds this as a new alert action
        alert.addAction(action)
        //animated action
        present(alert, animated: true, completion: nil)
        //start new round after showing alert
        startNewRound()
    }
    
    //slider functionality
    @IBAction func sliderMoved(_ slider: UISlider)
    {
        //set current vallue to the slider value
        currentValue = lroundf(slider.value)
        //check value of slider by printing into console
        //print("The value of the slider is now: \(slider.value)")
    }
    
    //function that runs when a new game round starts
    func startNewRound()
    {
        //update round number
        round += 1
        //generate a new target value
        targetValue = Int.random(in: 1...100)
        //set the current value to 1, this line can be uncommented to have the value start at 1 for every new round
        //currentValue = 1
        //set slider value to the new current value
        slider.value = Float(currentValue)
        //update the labels when new round starts
        updateLabels()
    }
    
    //to update the labels
    func updateLabels()
    {
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
        roundLabel.text = String(round)
    }
}

