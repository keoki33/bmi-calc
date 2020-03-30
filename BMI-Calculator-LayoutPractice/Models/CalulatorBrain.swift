//
//  CalulatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Keoki on 28/3/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmiValue: BMI?
    var  backGroundColor = ""
    
    mutating func calculateBMI(height: Float, weight: Float)  {
        
        let bmi = weight / pow(height, 2)
        if bmi < 18.5 {
            bmiValue = BMI(value: bmi, advice: "Eat more pies", color: #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        } else if bmi <= 24.9 {
            bmiValue = BMI(value: bmi, advice: "Lookin Good", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            bmiValue = BMI(value: bmi, advice: "So Fat La", color: #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1))
        }
    }
    
    func getBMIValue() -> String {
        let string = String(format: "%.1f", bmiValue?.value ?? 0.0)
        return string
    }
    
    func getAdvice() -> String {
        return bmiValue?.advice ?? ""
    }
    
    func getColor() -> UIColor {
        return bmiValue?.color ?? UIColor.yellow
    }
}
