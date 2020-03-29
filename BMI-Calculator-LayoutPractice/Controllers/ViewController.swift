//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightSliderLabel: UILabel!
    @IBOutlet weak var weightSliderLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        heightSliderLabel.text = String(format: "%.1fm", sender.value)
        print(String(format: "%.2fm", sender.value))
    }
    
    
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightSliderLabel.text = "\(String(Int(sender.value)))Kg"
        print((String(Int(sender.value))))
    }
    
    
    func udateUi()  {
        
    }

    @IBAction func calculatePressed(_ sender: UIButton) {
     let BMI = weightSlider.value / pow(heightSlider.value, 2)
        print(String(format: "%.2f", BMI))
        let secondVC = SecondViewController()
        secondVC.bmiValue = String(format: "%.1f", BMI)
        self.present(secondVC, animated: true, completion:nil)
    }
}

