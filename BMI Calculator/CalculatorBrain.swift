//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Matthew Wong on 2022-01-15.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI (height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Normal!", color: UIColor.green)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less!", color: UIColor.red)
        }
    }
    
    func getBMIValue () -> String {
        let bmi1D = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi1D
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}
