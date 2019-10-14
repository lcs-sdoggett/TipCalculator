import UIKit

// Text fields
let billAmount = UITextField()
let tipPercentage = UITextField()
let splitBetweenHowManyPeople = UITextField()

// Simulate User Input
billAmount.text = "100"
tipPercentage.text = "15"
splitBetweenHowManyPeople.text = "2"

// Get actual strings from each text field
// (force unwrapping the optional strings contained in each text field)
let billAmountAsString = billAmount.text!
let tipPercentageAsString = tipPercentage.text!
let splitBetweenHowManyPeopleAsString = splitBetweenHowManyPeople.text!

// Convert strings to Double data Type
let billAmountAsDouble = Double(billAmountAsString)!
let tipPercentageAsDouble = Double(tipPercentageAsString)!
let splitBetweenHowManyPeopleAsDouble = Double(splitBetweenHowManyPeopleAsString)!

// Calculate The Tip
let tipPercentageAsDoubleDivided = tipPercentageAsDouble/100
let tipAmountInDollars = billAmountAsDouble * tipPercentageAsDoubleDivided

var number = 12.9
number = round(number)
print(number)


