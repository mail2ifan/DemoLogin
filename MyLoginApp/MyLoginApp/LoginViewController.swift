//
//  LoginViewController.swift
//  MyLoginApp
//
//  Created by Mobility on 07/12/18.
//  Copyright © 2018 Iyyappan. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    //UserName and Password Length
    let minLenght = 6
    let maxLength = 16
    
    //Default Login IDs
    let defaultUserName : String = "Test123"
    let defaultPassword : String = "Test@123"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }


    @IBAction func btnLoginClicked(_ sender: Any) {
        
        var userName = txtUserName.text
        var password = txtPassword.text
        
        if ( userName == "" && password == "") {
            self.showAlert(title: "Alert", message: "Please Enter UserName and Password")
            
        } else if (userName == "") {
            self.showAlert(title: "Alert", message: "Please Enter UserName")
        
        } else if (password == "") {
            self.showAlert(title: "Alert", message: "Please Enter Password")
        
        } else {
            if( (userName?.characters.count)! >= minLenght && (password?.characters.count)! <= maxLength) {
                
                if ( userName == defaultUserName && password == defaultPassword) {
                    self.showAlert(title: "Alert", message: "Login Success")
                } else {
                    self.showAlert(title: "Alert", message: "Login Failed")
                }
            } else {
                self.showAlert(title: "Alert", message: "User Name & Password should be in min 6 to max 16 digits")
            }
        }
    }
    
    public func showAlert(title : String, message : String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        
        let actionButton = UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: nil)
        alert.addAction(actionButton)
        self.present(alert, animated: true, completion: nil)
        
    }
}

