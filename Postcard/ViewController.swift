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
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Tenary Operator
        //self.messageLabel.hidden = (self.messageLabel.hidden) ? false : true
        
        self.messageLabel.hidden = false
        self.messageLabel.text = "Message: " + self.enterMessageTextField.text
        self.messageLabel.textColor = UIColor.redColor()
        
        self.enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        if(self.messageLabel.text == ""){ // empty
            self.mailButton.setTitle("Send Mail", forState: UIControlState.Normal)
        }else{ // NOT empty
            self.mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        }
        
        // unhide the nameLabel
        self.nameLabel.hidden = false
        
        // update the nameLabel's Text to display the information in the enterNameTextField
        self.nameLabel.text = "Name: " + self.enterNameTextField.text
        
        // change the nameLabel's textColor to blue 
        self.nameLabel.textColor = UIColor.blueColor()
        
        // clear the enterNameTextField text 
        self.enterNameTextField.text = ""
    }

}

