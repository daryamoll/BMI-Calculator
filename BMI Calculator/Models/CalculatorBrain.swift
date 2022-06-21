//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Daria on 14.04.2022.

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI (_ height: Float, _ weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor(displayP3Red: 165/255, green: 190/255, blue: 204/255, alpha: 1))
        } else if bmiValue <= 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fir as a fiddle!", color: UIColor(displayP3Red: 173/255, green: 297/255, blue: 159/255, alpha: 1))
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: UIColor(displayP3Red: 255/255, green: 99/255, blue: 99/255, alpha: 1))
        }
    }
    
    func getBMIValue () -> String {
        let bmiTo1DecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiTo1DecimalPlace
    }
    
    func getAdvice () -> String {
        return bmi?.advice ?? "No advice"
    }
    
    func getColor () -> UIColor {
        return bmi?.color ?? .white
    }
}
