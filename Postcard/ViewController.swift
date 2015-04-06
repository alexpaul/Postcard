//
//  ViewController.swift
//  Postcard
//
//  Created by Alex Paul on 4/1/15.
//  Copyright (c) 2015 Alex Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //self.messageLabel.hidden = (self.messageLabel.hidden) ? false : true
        self.messageLabel.hidden = false
        self.messageLabel.text = self.enterMessageTextField.text
        self.messageLabel.textColor = UIColor.redColor()
        
        self.enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        self.mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

