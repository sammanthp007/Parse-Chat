//
//  ChatViewController.swift
//  Parse Chat
//
//  Created by samman on 3/4/17.
//  Copyright © 2017 samman. All rights reserved.
//

import UIKit
import Parse

class ChatViewController: UIViewController {

    @IBOutlet weak var messageText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // on hitting the send button
    
    @IBAction func onSend(_ sender: Any) {
        print ("sending message")
        print (messageText.text ?? "Nothing")
        if messageText.text != "" {
            let message = PFObject(className: "Message")
            message["text"] = messageText.text
            message.saveInBackground(block: {(success: Bool?, error: Error?) in
                if success == true {
                    print ("message sent")
                }
                else {
                    print ("message not sent")
                }
                })
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
