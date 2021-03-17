//
//  LoginVC.swift
//  Restaurant Management App
//
//  Created by Jeyasuriyaa Jeyakumar on 27/07/20.
//  Copyright © 2020 Jakob Clements. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var Id: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func LoginBtn(_ sender: Any) {
        
        let userId: String
        userId = Id.text!
        
        let userPassword: String
        userPassword = Password.text!
        
        if(userId == "staff" && userPassword == "letmein")
        {
            //code for true
        }
        else if(userId.isEmpty && userPassword.isEmpty)
        {
            let alert  = UIAlertController(title: "Alert", message: "Please fill all the fields", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Close", style: UIAlertAction.Style.default , handler:nil))
            self.present(alert, animated: true,completion: nil)
        }
        else
        {
            let alert  = UIAlertController(title: "Oops", message: "The ID or Password is wrong", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Try Again", style: UIAlertAction.Style.default , handler:nil))
            self.present(alert, animated: true,completion: nil)
            
        }
            
        }
        
        
    }
    
    


