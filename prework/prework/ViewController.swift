//
//  ViewController.swift
//  prework
//
//  Created by thien tran on 8/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        //Get Bill Amount
        let bill = Double(billAmountTextField.text!) ?? 0
        //Get total tip by multiplying tip with tipPercentage
        let tipPercentage = [0.15, 0.18, 0.20]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        tipAmountLabel.text = String(format: "$%.2f", tip )
        totalLabel.text = String(format: "$%.2f", total)
    }
    

}

