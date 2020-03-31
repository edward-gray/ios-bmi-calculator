//
//  CalculateBrain.swift
//  BMI Calculator
//
//  Created by Edward Gray on 31.03.2020.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculateBrain {
    var bmi: BMI? = nil
    
    func getBmiAsString() -> String {
        return String(format: "%.1f", bmi?.value ?? "0.0")
    }
    
    func getBMI() -> BMI {
        return bmi!
    }

    mutating func calculateBmi(_ height: Float, _ weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1))
        }
    }
    
}
