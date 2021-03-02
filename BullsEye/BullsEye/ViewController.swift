//
//  ViewController.swift
//  BullsEye
//
//  Created by Alyssa Ma on 2/28/21.
//

import UIKit

class ViewController: UIViewController {
    //var to keep track of slider value
    var currentValue: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //alert display functionality
    @IBAction func showAlert()
    {
        //tells user what the current value is
        let message = "The value of the slider is: \(currentValue)"
        
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
}

