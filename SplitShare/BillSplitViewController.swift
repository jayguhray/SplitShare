//
//  BillSplitViewController.swift
//  SplitShare
//
//  Created by Garay,Jerry on 9/20/16.
//  Copyright © 2016 Garay,Jerry. All rights reserved.
//

import UIKit

class BillSplitViewController: UIViewController, UIScrollViewDelegate, UITextFieldDelegate {
    
    @IBOutlet weak var amountField: UITextField!
    @IBOutlet weak var billNameField: UITextField!
    @IBOutlet weak var dateField: UITextField!

    @IBOutlet weak var nameParent: UIView!
    @IBOutlet weak var amountParent: UIView!
    @IBOutlet weak var dateParent: UIView!
    
    @IBAction func onBackTap(sender: UIButton) {
        self.dismissViewControllerAnimated(true) { 
        
        }
    }

    @IBOutlet weak var billScrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        billNameField.becomeFirstResponder()
    

        // Do any additional setup after loading the view.
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        if textField == billNameField {
            amountField.becomeFirstResponder()
            //billScrollView.setContentOffset(CGPointMake(0, 60), animated: true)
        }
        else if textField == amountField {
            dateField.becomeFirstResponder()
            //billScrollView.setContentOffset(CGPointMake(0, 100), animated: true)
        }
        else if textField == dateField {
            dateField.resignFirstResponder()
        }
        
        return true
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    func textFieldDidBeginEditing(textField: UITextField) {
//        }
//    }
    
    
    @IBAction func onTapDismiss(sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destinationViewController = segue.destinationViewController as! BSRequestViewController

        destinationViewController.amount = amountField.text
        destinationViewController.name = billNameField.text
        destinationViewController.date = dateField.text
        destinationViewController.view.layoutIfNeeded()
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    

}
