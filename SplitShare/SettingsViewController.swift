//
//  SettingsViewController.swift
//  SplitShare
//
//  Created by Garay,Jerry on 9/20/16.
//  Copyright © 2016 Garay,Jerry. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBAction func onTapClose(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
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
