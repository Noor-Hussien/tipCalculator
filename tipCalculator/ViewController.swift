//
//  ViewController.swift
//  tipCalculator
//
//  Created by Noor Ali on 8/2/20.
//  Copyright © 2020 Noor Ali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        
//        print("Hello")
        view.endEditing(true) // makes the keyboard to disappear by activating tap Gesture
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        // Get the biil amount
        let bill = Double(billTextField.text!) ?? 0 // set to zero if n't provided
        let tipPercentage = [0.15, 0.18, 0.20]
        
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]    // Calculate the bill
        let total = tip + bill     // calculate total
        
        tipLabel.text    =  String(format: "$%.2f", tip)
        totalLabel.text  =  String(format: "$%.2f", total)
    }
}

