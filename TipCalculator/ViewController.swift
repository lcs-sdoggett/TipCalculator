//
//  ViewController.swift
//  TipCalculator
//
//  Created by Doggett, Scott on 2019-10-11.
//  Copyright © 2019 Doggett, Scott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    
    //Establish Tip Amount
    var tipPercent = Double(0.0)
    
    var percentPressed = false
    
    @IBAction func tip5(_ sender: Any) {
        tipPercent = 0.05
        percentPressed = true
    }
    
    @IBAction func tip10(_ sender: Any) {
        tipPercent = 0.1
        percentPressed = true
    }
    
    @IBAction func tip15(_ sender: Any) {
        tipPercent = 0.15
        percentPressed = true
    }
    
    @IBAction func tip20(_ sender: Any) {
       tipPercent = 0.2
        percentPressed = true
    }
    
    // Establish Bill Amount
    @IBOutlet weak var amountOfBill: UITextField!
    
    // Establish Amount of People
    @IBOutlet weak var amountOfPeople: UITextField!
    
    // Total Tip Label
    @IBOutlet weak var totalTipLabel: UILabel!
    
    // Tip Per Person Label
    @IBOutlet weak var tipPerPersonLabel: UILabel!
    
    // Title Label
    @IBOutlet weak var titleLabel: UILabel!
    
    
    //MARK: Methods

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculate(_ sender: Any) {
        
        // Take text field and turn them into strings
        
        if percentPressed == false {
            titleLabel.text = "Enter All Values"
            return
        }
        guard let billAmountAsString = amountOfBill.text, amountOfBill.text != "" else {
            titleLabel.text = "Enter All Values"
            return
        }
        guard let amountOfPeopleAsString = amountOfPeople.text, amountOfPeople.text != "" else{
            titleLabel.text = "Enter All Values"
            return
        }
        
        // Take strings and turn them into doubles
        guard let billAmountAsDouble = Double(billAmountAsString) else{
            
            return
        }
        
        guard let amountOfPeopleAsDouble = Double(amountOfPeopleAsString) else{
            
            return
        }
        
        // Set Title Back
        titleLabel.text = "Tip Calculator"
        
        // Calculate tip amount
        let tipAmountInDollars = billAmountAsDouble * tipPercent
        
        // Round the value to 2 decimal places
        let roundedtipAmountInDollars = (round(100*tipAmountInDollars)/100)
        
        // Change tip amount into a string
        let tipAmountInDollarsasString = String(roundedtipAmountInDollars)
        
        // Share information to the user interface
        totalTipLabel.text = "Total Tip: \(tipAmountInDollarsasString)$"
        
        // Calculate tip per person
        let tipAmountPerPerson = tipAmountInDollars/amountOfPeopleAsDouble
        
        // Round the value to 2 decimal places
        let roundedTipPerPerson = (round(100*tipAmountPerPerson)/100)
        
        // Change tip per person into a string
        let tipPerPersonasString = String(roundedTipPerPerson)
        
         // Share information to the user interface
        tipPerPersonLabel.text = "Tip Per Person: \(tipPerPersonasString)$"

        
    }
    
}

