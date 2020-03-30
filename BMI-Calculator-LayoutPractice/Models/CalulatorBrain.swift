//
//  CalulatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Keoki on 28/3/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiValue: BMI?
    var  backGroundColor = ""
    
    mutating func calculateBMI(height: Float, weight: Float)  {
        var advice = ""
//        var color: UIColor
        let bmi = weight / pow(height, 2)
        if bmi < 18.5 {
            print("underweight")
            advice = "Underweight"
        } else if bmi >= 18.5 && bmi <= 24.9 {
            advice = "Normal"
            print("Normal")
        } else {
            advice = "Overweight"
            print("Overweight")
        }
        
        
        bmiValue = BMI(value: bmi, advice: advice, color: .red)
        
        
    }
    
    func getBMIValue() -> String {
        let string = String(format: "%.1f", bmiValue?.value ?? 0.0)
        return string
    }
    
    
    
    
}
