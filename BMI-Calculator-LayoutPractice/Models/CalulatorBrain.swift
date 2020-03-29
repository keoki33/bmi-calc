//
//  CalulatorBrain.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Keoki on 28/3/20.
//  Copyright © 2020 App Brewery. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiValue = "0.0"
    var  backGroundColor = ""
    
    mutating func calculateBMI(height: Float, weight: Float)  {
        let bmi = weight / pow(height, 2)
        bmiValue = String(format: "%.2f", bmi)
    }
    
    func getBMIValue() -> String {
        return bmiValue
    }

    
}
