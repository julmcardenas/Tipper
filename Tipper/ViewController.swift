//
//  ViewController.swift
//  Tipper
//
//  Created by Julianna Cardenas on 12/19/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmtLabel: UILabel!
    @IBOutlet weak var tipTitleLabel: UILabel!
    @IBOutlet weak var totalTitleLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var splitField: UITextField!
    @IBOutlet weak var splitLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        billAmtLabel.adjustsFontSizeToFitWidth
//        tipTitleLabel.adjustsFontSizeToFitWidth
//        totalTitleLabel.adjustsFontSizeToFitWidth
    }

    @IBAction func onTap(_ sender: Any) {
        //print("Hello")
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        //Get the bill amount
        let bill = Double(billField.text!) ?? 0
        
        //Calculate the Tip and Total
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the tip and total labels
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        //Update amount per person
        let numPerson = Double(splitField.text!) ?? 1
        let split = total/numPerson
        splitLabel.text = String(format: "$%.2f", split)
    }
}

