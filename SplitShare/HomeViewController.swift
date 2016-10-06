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
    let amount: String!
    let date: String!
    let payees: [String]
    let status: String!
    let split: CGFloat!
}

var myObjects = [
    Bills(name: "Spotify Family", amount: "-2.50", date: "10/14", payees: ["Jerry Garay", "Adey Salyards", "Ravi Gangele", "Alex Hachey", "Richard Kelly", "Timothy Lee"], status: "Paying", split: 2.50),
    Bills(name: "Google Fiber", amount: "70.00", date: "10/04", payees: ["Jerry Garay", "Adey Salyards", "Ravi Gangele", "Alex Hachey"], status: "Recieving", split: 17.50)
]

var myHistoryObjects = [
    Bills(name: "KBBQ Lunch", amount: "$-8.53", date: "10/3/16", payees: ["Person 1", "Person 4", "Person 3", "Person 4", "Person 5", "Person 6" ], status: "Paid", split: 6),
    Bills(name: "Google Fiber", amount: "$70.00", date: "9/04/16", payees: ["Person 1", "Person 4", "Person 3", "Person 4"], status: "Recieved", split: 4),
    Bills(name: "Spotify Family", amount: "$-2.50", date: "09/14/16", payees: ["Person 1", "Person 4", "Person 3", "Person 4", "Person 5", "Person 6" ], status: "Paid", split: 6),
    Bills(name: "NY Trip Gas Money", amount: "$-17.35", date: "09/09/16", payees: ["Person 1", "Person 4", "Person 3", "4"], status: "Paid", split: 4)
    
]



class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {

    @IBOutlet weak var historyTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        historyTableView.dataSource = self
        historyTableView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        historyTableView.reloadData()
        print(myHistoryObjects)
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return myObjects.count
        }
        
        else {
            return myHistoryObjects.count
        }
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            // set up myObjects
            
            let cell = historyTableView.dequeueReusableCellWithIdentifier("HistoryCell") as! HistoryCellTableViewCell
            cell.billNameLabel?.text = myObjects[indexPath.row].name
            cell.costLabel.text = String("$\(myObjects[indexPath.row].amount)")
            cell.dateLabel.text = myObjects[indexPath.row].date
            cell.statusLabel.text = myObjects[indexPath.row].status
            cell.splitLabel.text = String("Split with \(myObjects[indexPath.row].payees.count) people")
            
            return cell
        } else {
            // set up myHistoryObjects
            
            let cell1 = historyTableView.dequeueReusableCellWithIdentifier("realHistory") as! realhisTableViewCell
            cell1.nameLabel?.text = myHistoryObjects[indexPath.row].name
            cell1.statusLabel.text = myHistoryObjects[indexPath.row].status
            cell1.costLabel.text = myHistoryObjects[indexPath.row].amount
            cell1.dateLabel.text = myHistoryObjects[indexPath.row].date
            cell1.splitLabel.text = String("Split with \(myHistoryObjects[indexPath.row].payees.count) people")
            
            
            return cell1
        }
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "Ongoing"
        } else if section == 1{
            return "History"
        }
        else {
            return "error"
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
