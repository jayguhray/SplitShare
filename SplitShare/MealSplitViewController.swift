//
//  MealSplitViewController.swift
//  SplitShare
//
//  Created by Garay,Jerry on 10/3/16.
//  Copyright © 2016 Garay,Jerry. All rights reserved.
//

import UIKit

class MealSplitViewController: UIViewController, UIScrollViewDelegate{
    
    @IBAction func onBackTap(sender: AnyObject) {
        self.dismissViewControllerAnimated(true){}
    }
    
    
    @IBOutlet weak var msScrollView: UIScrollView!
    @IBOutlet weak var parentMeal: UIView!
    @IBOutlet weak var parentBill: UIView!
    @IBOutlet weak var mealName: UITextField!
    @IBOutlet weak var billamount: UITextField!
    
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var totalCost: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBAction func calctip(sender: UISegmentedControl) {
        let tipPercentages = [0.18, 0.2, 0.22, 0]
        
        let bill = Double(billamount.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        print(total)
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalCost.text = String(format: "$%.2f", total)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        mealInitialY = parentMeal.frame.origin.y
        mealOffset = -120
        
        msScrollView.contentSize = msScrollView.frame.size
        msScrollView.delegate = self
        msScrollView.contentInset.bottom = 100

        // Do any additional setup after loading the view.
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        // This method is called as the user scrolls
    }
    
    func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        
    }
    
    func scrollViewDidEndDragging(scrollView: UIScrollView,
                                  willDecelerate decelerate: Bool) {
        // This method is called right as the user lifts their finger
    }
    
    func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        // This method is called when the scrollview finally stops scrolling.
    }
    func keyboardWillShow(notification: NSNotification!) {
        print("keyboardWillShow")
        parentMeal.frame.origin.y = mealInitialY + mealOffset
        msScrollView.contentOffset.y = msScrollView.contentInset.bottom
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == self.mealName {
            self.billamount.becomeFirstResponder()
        }
        
        return true
    }
    
    var mealInitialY: CGFloat!
    var mealOffset: CGFloat!
    
    func keyboardWillHide(notification: NSNotification!) {
        
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
