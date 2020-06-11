//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by muhammad.farisi on 11/06/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class CalculatorBrain {
    private var bmi: BMI?
    
    func calculate(height: Float, weight: Float) {
        let value = weight / (height * height)
        let advice: String
        let color: UIColor
        if value < 18.5 {
            advice = "Underweight"
            color = .yellow
        } else if value > 24.9 {
            advice = "Overweight"
            color = .red
        } else {
            advice = "Normal"
            color = .green
        }
        bmi = BMI(value, advice, color)
    }
    
    func getBMIValue() -> Float {
        return bmi?.value ?? 0.0
    }
    
    func getBMIAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    func getBMIColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
    
    
}
