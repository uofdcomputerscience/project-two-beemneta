//
//  viewControllerThree.swift
//  Project 2
//
//  Created by Beemnet Alemayehu on 11/4/19.
//  Copyright © 2019 Russell Mirabelli. All rights reserved.
//

import UIKit

class viewControllerThree: UIViewController {
    
    
    
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var loader: UIActivityIndicatorView!
    
    @IBAction func date(_ sender: UIDatePicker) {
        
        let calendar = Calendar.current
        
        let xmasComp = DateComponents(calendar: calendar, year: 2019, month: 12, day: 25)
        let xmasDate = calendar.date(from: xmasComp)
        
        
        if xmasDate == date.date {
            loader.stopAnimating()
            continueButton.isEnabled = true
        }
        else {
            loader.startAnimating()
            continueButton.isEnabled = false
        }
                
    }
    @IBOutlet weak var date: UIDatePicker!
}
