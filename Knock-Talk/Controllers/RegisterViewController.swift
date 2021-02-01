//
//  AppDelegate.swift
//  Knock-Talk
//
//  Created by Aleksandr Seminov on 21/01/2021.
//  Copyright © 2021 Aleksandr802. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if error != nil {
                    self.performSegue(withIdentifier: "RegisterErrorPopup", sender: self)
                } else {
                    //Navigate to the ChatViewController
                    self.performSegue(withIdentifier: "RegisterToChat", sender: self)
                }
            }
        }
    }
    
}
