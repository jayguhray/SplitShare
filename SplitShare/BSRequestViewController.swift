//
//  BSRequestViewController.swift
//  SplitShare
//
//  Created by Garay,Jerry on 9/20/16.
//  Copyright © 2016 Garay,Jerry. All rights reserved.
//

import UIKit

class BSRequestViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBAction func onBackTap(sender: UIButton) {
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBOutlet weak var peopleTableView: UITableView!
    
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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        peopleTableView.dataSource = self
        peopleTableView.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = peopleTableView.dequeueReusableCellWithIdentifier("nameCell") as! PeopleTableViewCell
        
        cell.nameLabel?.text = Names[indexPath.row]
        
        return cell
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
