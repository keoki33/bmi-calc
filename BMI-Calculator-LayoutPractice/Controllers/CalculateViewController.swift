//
//  ViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    
    @IBOutlet weak var heightSliderLabel: UILabel!
    @IBOutlet weak var weightSliderLabel: UILabel!
    
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    var bmiValue = "0.0"
    
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
      let bmi = weightSlider.value / pow(heightSlider.value, 2)
        bmiValue = String(format: "%.2f", bmi)
        self.performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResult" {
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.bmiValue = bmiValue
        }
    }
}

