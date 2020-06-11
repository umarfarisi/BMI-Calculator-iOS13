//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by muhammad.farisi on 10/06/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var background: UIImageView!
    
    var bmiValue: String? = nil
    var advice: String? = nil
    var color: UIColor? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text = bmiValue
        adviceLabel.text = advice
        background.backgroundColor = color
    }
    
    @IBAction func onRecalculateClick(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }

}
