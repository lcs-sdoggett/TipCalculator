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
    @IBOutlet weak var billAmount: UITextField!
    
    //Establish Tip Percent
    @IBOutlet weak var tipPercent: UITextField!
    
    //Establish Amount of People
    @IBOutlet weak var amountOfPeople: UITextField!
    
    //Total Tip Label
    @IBOutlet weak var totalTipLable: UILabel!
    
    //Tip Per Person Label
    @IBOutlet weak var tipPerPersonLable: UILabel!
    
    //MARK: Methods

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculate(_ sender: Any) {
        
        // Take text field and turn them into strings
        let billAmountAsString = billAmount.text!
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


        
    }
    
}

