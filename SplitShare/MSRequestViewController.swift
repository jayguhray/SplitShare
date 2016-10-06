//
//  MSRequestViewController.swift
//  SplitShare
//
//  Created by Garay,Jerry on 10/4/16.
//  Copyright © 2016 Garay,Jerry. All rights reserved.
//

import UIKit

class MSRequestViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBAction func onBackTap(sender: UIButton) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    var amount: String!
    var name: String!
    var total: String!
    var selectedPerson: String!
    
    @IBOutlet weak var splitnumberLabel: UILabel!
    @IBOutlet weak var splitwithLabel: UILabel!
    
    @IBOutlet weak var peopleTableView: UITableView!
    
    var selectedPerson2: String!
    
    var Names = ["Jerry Garay",
                 "Jinny Jefferis",
                 "Meda Mingo",
                 "Angelika Atkison",
                 "Wilbur Woolford",
                 "Wally Wagar",
                 "Soila Shrader",
                 "Jonnie Janssen",
                 "Carolynn Clendening",
                 "Robert Ruble",
                 "Aron Avelar",
                 "Avery Arzu",
                 "Maire Minor",
                 "Jerica Jernigan",
                 "Retta Radley",
                 "Dede Dalley",
                 "Dinorah Darrigo",
                 "Merideth Mckamey",
                 "Stephany Schilke",
                 "Augustus Arvie"]
    
    var nameArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.peopleTableView.allowsMultipleSelection = true
        
        peopleTableView.dataSource = self
        peopleTableView.delegate = self
        

        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "People"
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        
        let cell = peopleTableView.dequeueReusableCellWithIdentifier("nameCell") as! peopleMSTableViewCell
        
        cell.nameLabel?.text = Names[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Names.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        selectedPerson2 = Names[indexPath.row]
        nameArray.append(selectedPerson2)
        //splitwithLabel.text = "Split with " +  String(nameArray.count)
        splitnumberLabel.text = String(nameArray.count)
        var selectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        selectedCell.contentView.backgroundColor = UIColor.init(red: 206/255, green: 82/255, blue: 80/255, alpha: 1.0)
    }

    @IBAction func didPressNext(sender: AnyObject) {
        let newBill = Bills(name: name, amount: total, date: "10/06/16", payees: ["1","2","3","4","5","6"], status: "Paid", split: 6)
        
        myHistoryObjects.append(newBill)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let destinationViewController = segue.destinationViewController as! MealConfirmViewController
        
        destinationViewController.amount = 
            
            destinationViewController.view.layoutIfNeeded()
    }
    
    //override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
        

        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 */
}


