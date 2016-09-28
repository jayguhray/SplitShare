//
//  LoginViewController.swift
//  SplitShare
//
//  Created by Garay,Jerry on 9/18/16.
//  Copyright © 2016 Garay,Jerry. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIScrollViewDelegate {
    
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginIndicator: UIActivityIndicatorView!
    @IBAction func didPressLogin(sender: UIButton) {
        loginIndicator.startAnimating()
        
        if emailField.text == "jay@email.com" && passField.text == "password"{
            delay(2){
            self.loginIndicator.stopAnimating()
            self.performSegueWithIdentifier("loginSegue", sender: self)
            }
        }
        else if emailField.text!.isEmpty {
            let alertController = UIAlertController(title: "Email Required", message: "Please enter your email address", preferredStyle: .Alert)
            let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
            }
            self.loginIndicator.stopAnimating()
            alertController.addAction(cancelAction)
            presentViewController(alertController, animated: true) {
            }
        }
        else {
            delay(2){
                self.loginIndicator.stopAnimating()
                let alertController = UIAlertController(title: "Sign in Failed", message: "Please enter the correct Email and Password", preferredStyle: .Alert)
                let cancelAction = UIAlertAction(title: "OK", style: .Cancel) { (action) in
                    // handle cancel response here. Doing nothing will dismiss the view.
                }
                alertController.addAction(cancelAction)
                self.presentViewController(alertController, animated: true) {
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
