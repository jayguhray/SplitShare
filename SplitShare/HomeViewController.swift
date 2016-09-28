//
//  HomeViewController.swift
//  SplitShare
//
//  Created by Garay,Jerry on 9/20/16.
//  Copyright © 2016 Garay,Jerry. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var historyTableView: UITableView!
    
    var billsValue = ["Spotify Family", "AT&T", "Netflix", "FIOS", "Carpool"]
    var statusValue = ["Paid", "Recieved", "Paid", "Paid", "Paid",]
    var costValue = ["$15.00", "" ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        historyTableView.dataSource = self
        historyTableView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = historyTableView.dequeueReusableCellWithIdentifier("HistoryCell") as! HistoryCellTableViewCell
        
        cell.billNameLabel?.text = billsValue[indexPath.row]
        cell.costLabel.text = "$2.50"
        cell.statusLabel.text = "Paid"
        cell.splitLabel.text = "Split 6 ways"
        
        
        return cell
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "Ongoing"
        } else {
            return "History"
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
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
