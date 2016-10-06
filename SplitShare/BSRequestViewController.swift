//
//  BSRequestViewController.swift
//  SplitShare
//
//  Created by Garay,Jerry on 9/20/16.
//  Copyright © 2016 Garay,Jerry. All rights reserved.
//

import UIKit

class BSRequestViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var amount: String!
    var name: String!
    var date: String!
    var selectedPerson: String!
    
    @IBOutlet weak var splitnumberLabel: UILabel!
    @IBOutlet weak var splitwithlabel: UILabel!
    @IBAction func onBackTap(sender: UIButton) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBOutlet weak var peopleTableView: UITableView!
    
    var Names = ["Jacquelin Jozwiak",
    "Jerry Garay",
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
        print(amount)
        print(name)
        print(date)
        
        self.peopleTableView.allowsMultipleSelection = true
        
        peopleTableView.dataSource = self
        peopleTableView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "People"
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Names.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = peopleTableView.dequeueReusableCellWithIdentifier("nameCell") as! PeopleTableViewCell
        
        cell.nameLabel?.text = Names[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        selectedPerson = Names[indexPath.row]
        nameArray.append(selectedPerson)
        
        //splitwithlabel.text = "Split with"
        
        splitnumberLabel.text = String(nameArray.count)
        
        let selectedCell:UITableViewCell = tableView.cellForRowAtIndexPath(indexPath)!
        selectedCell.contentView.backgroundColor = UIColor.init(red: 206/255, green: 82/255, blue: 80/255, alpha: 1.0)
    }
    
    @IBAction func didPressNext(sender: AnyObject) {
        let newBill = Bills(name: name, amount: amount, date: date, payees: ["1","2","3","4"], status: "Recieving", split: 4)
        
        myObjects.append(newBill)
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
