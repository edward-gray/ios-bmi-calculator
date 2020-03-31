//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Edward Gray on 31.03.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backgournd: UIImageView!
    
    var bmi: BMI? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if bmi != nil {
            bmiLabel.text = String(format: "%.1f", bmi?.value ?? 0.0)
            adviceLabel.text = bmi?.advice
            backgournd.backgroundColor = bmi?.color
        }
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }

}
