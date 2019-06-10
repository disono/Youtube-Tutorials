//
//  ViewController.swift
//  FoodTracker
//
//  Created by Archie on 05/06/2019.
//  Copyright © 2019 Archie. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    // Properties
    @IBOutlet weak var LBLMealName: UILabel!
    @IBOutlet weak var TXTEnterMealName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // handles user inputs through delegate callbacks
        TXTEnterMealName.delegate = self
    }

    // Methods
    @IBAction func BTNSetDefaultLabel(_ sender: Any) {
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // hide the keyboard
        textField.resignFirstResponder();
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        LBLMealName.text = textField.text
    }
    
}

