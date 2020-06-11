//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var heightValueLabel: UILabel!
    @IBOutlet weak var weightValueLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onHeightUISliderValueChange(_ sender: UISlider) {
        heightValueLabel.text = String(format: "%.2fm", sender.value)
    }
    
    @IBAction func onWeightUISliderValueChange(_ sender: UISlider) {
        weightValueLabel.text = String(format: "%.0fKg", sender.value)
    }
    
    @IBAction func canculateBMI(_ sender: UIButton) {
        calculatorBrain.calculate(
            height: heightSlider.value,
            weight: weightSlider.value
        )
        
        self.performSegue(withIdentifier: "goToResult", sender: "from canculateBMI method")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let senderStr = sender as? String {
            if senderStr == "from canculateBMI method" {
                let destination = segue.destination as! ResultViewController
                destination.bmiValue = String(format: "%.1f", calculatorBrain.getBMIValue())
                destination.advice = calculatorBrain.getBMIAdvice()
                destination.color = calculatorBrain.getBMIColor()
            }
        }
    }
    
    
}

