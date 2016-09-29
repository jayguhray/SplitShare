//
//  BillSplitViewController.swift
//  SplitShare
//
//  Created by Garay,Jerry on 9/20/16.
//  Copyright © 2016 Garay,Jerry. All rights reserved.
//

import UIKit

class BillSplitViewController: UIViewController {
    
    @IBOutlet weak var amountField: UITextField!
    @IBOutlet weak var billNameField: UITextField!
    @IBOutlet weak var dateField: UITextField!

    
    @IBAction func onBackTap(sender: UIButton) {
        self.dismissViewControllerAnimated(true) { 
        
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
