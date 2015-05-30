//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by Ehab Issa on 5/30/15.
//  Copyright (c) 2015 Ehab Issa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var humanYearsTextField: UITextField!
    @IBOutlet weak var dogYearsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        humanYearsTextField.becomeFirstResponder()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func convertHumanYearsToDogYearsButtonPressed(sender: UIButton) {
        let conversionConstant = 7
        let numberOfDogYears = humanYearsTextField.text.toInt()! * conversionConstant
        
        dogYearsLabel.hidden = false
        dogYearsLabel.text = "\(numberOfDogYears)" + " " + "in Dog Years"
        humanYearsTextField.resignFirstResponder()
        
    }
}

