//
//  viewControllerTwo.swift
//  Project 2
//
//  Created by Beemnet Alemayehu on 11/4/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class viewControllerTwo: UIViewController {
    
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var continueButton: UIButton!
    
    
    @IBAction func stepper(_ sender: UIStepper) {
        stepperLabel.text = "\(round(stepper.value))"
        
        if round(stepper.value) == 5 && round(slider.value) == 5 {
            continueButton.isEnabled = true
        }
        else {
            continueButton.isEnabled = false
        }
        
    }
    
    
    @IBAction func slider(_ sender: UISlider) {
        sliderLabel.text = "\(round(slider.value))"
        
        if round(stepper.value) == 5 && round(slider.value) == 5 {
            continueButton.isEnabled = true
        }
        else {
            continueButton.isEnabled = false
        }
    }
    
    
}
