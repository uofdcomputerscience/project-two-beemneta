//
//  viewControllerFour.swift
//  Project 2
//
//  Created by Beemnet Alemayehu on 11/4/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class viewControllerFour: UIViewController {
    
       override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
        picker.dataSource = self
        picker.delegate = self
        textField.delegate = self
       }
    var stateCity: String?
    
    
    @IBOutlet weak var picker: UIPickerView!
    
    @IBOutlet weak var textField: UITextField!
    @IBAction func textField(_ sender: UITextField) {
        if stateCity?.lowercased() == textField.text?.lowercased() {
            continueButton.isEnabled = true
        }
        else {
            continueButton.isEnabled = false
        }
    }
    @IBOutlet weak var continueButton: UIButton!
}


extension viewControllerFour: UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        stateCity = states[row].capital
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row].name
    }
    
}
extension viewControllerFour: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
}
