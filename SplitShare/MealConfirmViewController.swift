//
//  MealConfirmViewController.swift
//  SplitShare
//
//  Created by Garay,Jerry on 10/5/16.
//  Copyright © 2016 Garay,Jerry. All rights reserved.
//

import UIKit

class MealConfirmViewController: UIViewController {
    
    //var amount = String!

    @IBAction func onSendRequest(sender: AnyObject) {
        dismissViewControllerAnimated(true) {
        }

    }
    
    @IBAction func onBackTap(sender: AnyObject) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBOutlet weak var splitCostLabel: UILabel!
    
    
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
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
