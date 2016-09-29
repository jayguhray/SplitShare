//
//  HomeViewController.swift
//  SplitShare
//
//  Created by Garay,Jerry on 9/20/16.
//  Copyright © 2016 Garay,Jerry. All rights reserved.
//

import UIKit

struct Bills {
    let name: String!
    let amount: CGFloat!
    let date: String!
    let payees: [String]
    let status: String!
    let split: CGFloat!
}

var myObjects = [
    Bills(name: "AT&T Family", amount: 180.00, date: "10/06/16", payees: ["Jerry Garay", "Adey Salyards", "Ravi Gangele", "Alex Hachey"], status: "Received", split: 45),
    Bills(name: "Spotify Family", amount: 15, date: "10/14/16", payees: ["Jerry Garay", "Adey Salyards", "Ravi Gangele", "Alex Hachey", "Richard Kelly", "Timothy Lee"], status: "Paid", split: 2.50),
    Bills(name: "Google Fiber", amount: 70, date: "10/04/16", payees: ["Jerry Garay", "Adey Salyards", "Ravi Gangele", "Alex Hachey"], status: "Recieved", split: 17.50)
]



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
        return myObjects.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = historyTableView.dequeueReusableCellWithIdentifier("HistoryCell") as! HistoryCellTableViewCell
        
        cell.billNameLabel?.text = myObjects[indexPath.row].name
        //cell.costLabel.text = myObjects[indexPath.row].amount
        cell.statusLabel.text = myObjects[indexPath.row].status
        //cell.splitLabel. = myObjects[indexPath.row].payees
        
        
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
