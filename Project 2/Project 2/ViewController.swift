//
//  ViewController.swift
//  Project 2
//
//  Created by Russell Mirabelli on 10/26/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var segmentControl: UISegmentedControl!
    @IBAction func segmentControl(_ sender: UISegmentedControl) {
        if segmentControl.selectedSegmentIndex == 0 {
            topLabel.text = "A"
            bottomLabel.text = "B"
            switchA.alpha = 1.0
            switchA.isEnabled = true
            switchB.alpha = 1.0
            switchB.isEnabled = true
            switchC.alpha = 0.0
            switchC.isEnabled = false
            switchD.alpha = 0.0
            switchD.isEnabled = false
        }
        if segmentControl.selectedSegmentIndex == 1 {
            topLabel.text = "C"
            bottomLabel.text = "D"
            switchA.alpha = 0.0
            switchA.isEnabled = false
            switchB.alpha = 0.0
            switchB.isEnabled = false
            switchC.alpha = 1.0
            switchC.isEnabled = true
            switchD.alpha = 1.0
            switchD.isEnabled = true
        }
    }
    
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var switchA: UISwitch!
    @IBOutlet weak var switchB: UISwitch!
    @IBOutlet weak var switchC: UISwitch!
    @IBOutlet weak var switchD: UISwitch!
    
    @IBAction func switchA(_ sender: UISwitch) {
        if switchD.isOn && switchC.isOn && switchB.isOn && switchA.isOn {
            continueButton.isEnabled = true
        }
        else {
            continueButton.isEnabled = false
        }
    }
    
    @IBAction func switchB(_ sender: UISwitch) {
        if switchD.isOn && switchC.isOn && switchB.isOn && switchA.isOn {
            continueButton.isEnabled = true
        }
        else {
            continueButton.isEnabled = false
        }
    }
    
    @IBAction func switchC(_ sender: UISwitch) {
        if switchD.isOn && switchC.isOn && switchB.isOn && switchA.isOn {
            continueButton.isEnabled = true
        }
        else {
            continueButton.isEnabled = false
        }
    }
    
    @IBAction func switchD(_ sender: UISwitch) {
        if switchD.isOn && switchC.isOn && switchB.isOn && switchA.isOn {
            continueButton.isEnabled = true
        }
        else {
            continueButton.isEnabled = false
        }
    }
    
}

