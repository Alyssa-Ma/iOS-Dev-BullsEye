//
//  ViewController.swift
//  BullsEye
//
//  Created by Alyssa Ma on 2/28/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    //alert display functionality
    @IBAction func showAlert()
    {
        //creates iphone alert that shows message that has the filled title and message
        let alert = UIAlertController(
            title: "Hello, World",
            message: "This is my first app!",
            preferredStyle: .alert)
        //button to reply
        let action = UIAlertAction(
            title: "Awesome",
            style: .default,
            handler: nil)
        //adds this as a new alert action
        alert.addAction(action)
        //animated action
        present(alert, animated: true, completion: nil)
    }
}

