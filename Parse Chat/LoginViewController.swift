//
//  LoginViewController.swift
//  Parse Chat
//
//  Created by samman on 3/3/17.
//  Copyright © 2017 samman. All rights reserved.
//

import UIKit
import Parse

class LoginViewController: UIViewController {

    
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // allows users to sign up
    func signup(inp_email: String, inp_password : String) {
        let newUser = PFUser()
        newUser.email = inp_email
        newUser.password = inp_password
        
        newUser.signUpInBackground {(succeeded: Bool, error: Error?)-> Void in
            if let error = error {
                let errorString = error.localizedDescription
                let alertController = UIAlertController(title: "Try again", message: errorString, preferredStyle: .alert)
                
                // add ok button
                let okAction = UIAlertAction(title: "OK", style: .cancel, handler: {
                    (action) in
                })
                
                alertController.addAction(okAction)
                // Show the errorString somewhere and let the user try again.
                self.present(alertController, animated: true)
            } else {
                // Hooray! Let them use the app now.
                // create a segue
                print ("signed up")
            }
        }
    }
    
    // allows users to login
    func login(inp_username: String, inp_password: String) {
        
        PFUser.logInWithUsername(inBackground: "\(inp_username)", password: "\(inp_password)") { (user: PFUser?, error: Error?) -> Void in
            if user != nil {
                print ("logged in")
                // perform segue
                // create a segue
                print ("logged in")
            }
            else {
                    let errorString = error?.localizedDescription
                    let alertController = UIAlertController(title: "Try again", message: errorString, preferredStyle: .alert)
                    
                    // add ok button
                    let okAction = UIAlertAction(title: "OK", style: .cancel, handler: {
                        (action) in
                    })
                    
                    alertController.addAction(okAction)
                    // Show the errorString somewhere and let the user try again.
                self.present(alertController, animated: true)
            }
        }
    }
    
    // button actions
    @IBAction func onSignup(_ sender: Any) {
        let email = emailTextField.text! as String
        let password = passwordTextField.text! as String
        
        if email != "" && password != ""{
        signup(inp_email: email, inp_password: password)
    }
        else {
            let alertController = UIAlertController(title: "Empty Email or Password", message: "Email and password cannot be empty. Must provide Email", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: {(action) in
            })
            
            alertController.addAction(okButton)
            
            present(alertController, animated: true)
        }
    }
    
    
    @IBAction func onLogin(_ sender: Any) {
        let username = emailTextField.text! as String
        let password = passwordTextField.text! as String

        if username != "" && password != ""{
            login(inp_username : username, inp_password: password)
        }
        else {
            let alertController = UIAlertController(title: "Empty Username or Password", message: "Username and password cannot be empty. Must provide username for login", preferredStyle: .alert)
            
            let okButton = UIAlertAction(title: "OK", style: .cancel, handler: {(action) in
            })
            
            alertController.addAction(okButton)
            
            present(alertController, animated: true)
        }
        
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
