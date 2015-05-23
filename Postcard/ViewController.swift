//
//  ViewController.swift
//  Postcard
//
//  Created by esam on 5/22/15.
//  Copyright (c) 2015 esam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var labelMessage: UILabel!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    @IBOutlet weak var enterNameTextLabel: UITextField!
    
    
    @IBOutlet weak var enterMessageTextLabel: UITextField!
    
    @IBOutlet weak var mailButtom: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtom(sender: UIButton) {
        
        // adding comment for test
        
        
        labelMessage.hidden = false
        labelMessage.text = enterMessageTextLabel.text
        labelMessage.textColor = UIColor.redColor()
        
        enterMessageTextLabel.text = ""
        enterMessageTextLabel.resignFirstResponder()
        
        mailButtom.setTitle("mail sent", forState: UIControlState.Normal)
        
        // adding name display
        
        nameLabel.hidden = false
        nameLabel.text = enterNameTextLabel.text
        enterNameTextLabel.text = ""
        nameLabel.textColor = UIColor.blueColor()
    }

}

