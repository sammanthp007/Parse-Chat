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
        var newUser = PFUser()
        newUser.email = inp_email
        newUser.password = inp_password
        
        
        newUser.signUpInBackground {
            (succeeded: Bool, error: Error?) -> Void in
            if let error = error {
                let alertController = UIAlertController(title: "Error has happened", message: "bruh", preferredStyle: .alert)
                
                //present(alertController, animated: true)
                
                // Show the errorString somewhere and let the user try again.
            } else {
                // Hooray! Let them use the app now.
            }
        }
    }
    
    // allows users to login
    func login(inp_email: String, inp_password: String) {
        let alertController = UIAlertController(title: "This is title", message: "message part", preferredStyle: .alert)
        
        present(alertController, animated: true)
    }
    
    // button actions
    @IBAction func onSignup(_ sender: Any) {
        signup(inp_email: emailTextField.text!, inp_password: passwordTextField.text!)
    }
    
    
    @IBAction func onLogin(_ sender: Any) {
        login(inp_email: "thisiemail", inp_password: "passowrasd")
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
