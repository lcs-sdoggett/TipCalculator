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
    
    //Establish Tip Amount
    @IBOutlet weak var tipAmount: UITextField!
    
    //Establish Amount of People
    @IBOutlet weak var amountOfPeople: UITextField!
    
    //Total Tip Label
    @IBOutlet weak var totalTipLable: UILabel!
    
    //Tip Per Person Label
    @IBOutlet weak var tipPerPersonLable: UILabel!
 
    
    //Establish Tip Percent Variable
    var tipPercent = 0.0
    
    //MARK: Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

