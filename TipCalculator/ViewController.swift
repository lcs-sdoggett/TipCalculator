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
    
    func calculate() {
        
        // Take text field and turn them into strings
        
        // If they haven't entered a string tell the user to enter a value
        guard let billAmountAsString = amountOfBill.text, amountOfBill.text != "" else {
            titleLabel.text = "Enter All Values"
            return
        }
        
        // If they haven't entered a string tell the user to enter a value
        guard let amountOfPeopleAsString = amountOfPeople.text, amountOfPeople.text != "" else{
            titleLabel.text = "Enter All Values"
            return
        }
        
        // Take strings and turn them into doubles
        
        // If the string can't be converted to a double, diplay message to user
        guard let billAmountAsDouble = Double(billAmountAsString) else{
            titleLabel.text = "Enter Usable Values"
            return
        }
        
        // If the string can't be converted to a double, diplay message to user
        guard let amountOfPeopleAsDouble = Double(amountOfPeopleAsString) else{
            titleLabel.text = "Enter Usable Values"
            return
        }
        
        // Set Title Back
        titleLabel.text = "Tip Calculator"
        
        // Calculate tip amount
        let tipAmountInDollars = billAmountAsDouble * tipPercent
        
        // Share information to the user interface
        totalTipLabel.text = String(format: "Total Tip: $%.2f", tipAmountInDollars)
        
        // Calculate tip per person
        let tipAmountPerPerson = tipAmountInDollars/amountOfPeopleAsDouble
        
        // Share information to the user interface
        tipPerPersonLabel.text = String(format: "Tip Per Person: $%.2f", tipAmountPerPerson)
        
        
    }
    
    @IBAction func tip5(_ sender: Any) {
        tipPercent = 0.05
        calculate()
      }
      
      @IBAction func tip10(_ sender: Any) {
        tipPercent = 0.1
        calculate()
      }
      
      @IBAction func tip15(_ sender: Any) {
        tipPercent = 0.15
        calculate()
      }
      
      @IBAction func tip20(_ sender: Any) {
        tipPercent = 0.2
        calculate()
      }
      
    
}

