//
//  ViewController.swift
//  BullsEye
//
//  Created by Alyssa Ma on 2/28/21.
//

import UIKit

class ViewController: UIViewController {
    //var to keep track of slider value, slider starts at 1
    var currentValue: Int = 1
    //outlet to store a reference to the slider
    @IBOutlet var slider: UISlider!
    //store the target value
    var targetValue = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //initialize the value to what the slider value is
        currentValue = lroundf(slider.value)
        //set target value to a random int from 1 to 100
        targetValue = Int.random(in: 1...100)
    }

    //alert display functionality
    @IBAction func showAlert()
    {
        //tells user what the current value is and what the target value is
        let message = "The value of the slider is: \(currentValue)" + "\nThe target value is: \(targetValue)"
        
        //creates iphone alert that shows message that has the filled title and message
        let alert = UIAlertController(
            title: "Hello, World",
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
        //generate a new target value
        targetValue = Int.random(in: 1...100)
        //set the current value to 1
        currentValue = 1
        //set slider value to the new current value
        slider.value = Float(currentValue)
    }
}

