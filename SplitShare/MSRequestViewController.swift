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
    
    @IBOutlet weak var splitwithLabel: UILabel!
    
    @IBOutlet weak var peopleTableView: UITableView!
    
    var selectedPerson: String!
    
    var Names = ["Jacquelin Jozwiak",
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
        print("My Names go here")
        print (Names[indexPath.row])
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Names.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        selectedPerson = Names[indexPath.row]
        nameArray.append(selectedPerson)
        splitwithLabel.text = "Split with " +  String(nameArray.count)
        
        
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
