//
//  ViewController.swift
//  TipCalculator
//
//  Created by Doggett, Scott on 2019-10-11.
//  Copyright © 2019 Doggett, Scott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    
    //Establish Bill Amount
    @IBOutlet weak var amountOfBill: UITextField!
    
    //Establish Tip Percent
    @IBOutlet weak var tipPercent: UITextField!
    
    //Establish Amount of People
    @IBOutlet weak var amountOfPeople: UITextField!
    
    //Total Tip Label
    @IBOutlet weak var totalTipLabel: UILabel!
    
    
    //Tip Per Person Label
    @IBOutlet weak var tipPerPersonLabel: UILabel!
    
    
    //MARK: Methods

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculate(_ sender: Any) {
        
        // Take text field and turn them into strings
        let billAmountAsString = amountOfBill.text!
        let tipPercentAsString = tipPercent.text!
        let amountOfPeopleAsString = amountOfPeople.text!
        
        // Take strings and turn them into doubles
        let billAmountAsDouble = Double(billAmountAsString)!
        let tipPercentAsDouble = Double(tipPercentAsString)!
        let amountOfPeopleAsDouble = Double(amountOfPeopleAsString)!
        
        // Divide tip by 100 to get decimal
        let tipPercentageAsDoubleDivided = tipPercentAsDouble/100
        
        // Calculate tip amount
        let tipAmountInDollars = billAmountAsDouble * tipPercentageAsDoubleDivided
        
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

