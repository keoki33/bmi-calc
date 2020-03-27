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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func heightSliderChange(_ sender: UISlider) {
        heightSliderLabel.text = String(format: "%.1fm", sender.value)
        print(String(format: "%.1fm", sender.value))
    }
    
    
    
    @IBAction func weightSliderChange(_ sender: UISlider) {
        weightSliderLabel.text = "\(String(Int(sender.value)))Kg"
        print((String(Int(sender.value))))
    }
    
    
    func udateUi()  {
        
    }

}

