//
//  AppDelegate.swift
//  Knock-Talk
//
//  Created by Aleksandr Seminov on 21/01/2021.
//  Copyright © 2021 Aleksandr802. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            
            Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
                
                if error != nil {
                    
                    let error = error
                    
                    // Create new Alert
                    let dialogMessage = UIAlertController(title: "Confirm", message: error?.localizedDescription, preferredStyle: .alert)
                    
                    // Create OK button with action handler
                    let ok = UIAlertAction(title: "OK", style: .default, handler: { (action) -> Void in
                        print("Ok button tapped")
                    })
                    
                    //Add OK button to a dialog message
                    dialogMessage.addAction(ok)
                    
                    // Present Alert to
                    self?.present(dialogMessage, animated: true, completion: nil)
                    
                } else {
                    
                    //Navigate to the ChatViewController
                    self?.performSegue(withIdentifier: K.loginSegue, sender: self)
                    
                }
                
            }
        }
    }
}

