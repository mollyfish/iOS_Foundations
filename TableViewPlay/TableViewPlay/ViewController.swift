//
//  ViewController.swift
//  TableViewPlay
//
//  Created by Molly Kent on 6/10/15.
//  Copyright (c) 2015 Molly Kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

  @IBOutlet weak var tableView: UITableView!
//  var myArr = [String]()
  var people = [Person]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.myArr.append("Molly")
//    self.myArr.append("Peg")
//    self.myArr.append("Dan")
    
    self.tableView.dataSource = self
    
    let Molly = Person(first: "Molly", last: "Kent")
    let Peg = Person(first: "Peggy", last: "Kent")
    
    self.people.append(Molly)
    self.people.append(Peg)
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return self.people.count
  }
  
  func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = self.tableView.dequeueReusableCellWithIdentifier("myTableCell", forIndexPath: indexPath) as! UITableViewCell
    let personToDisplay = self.people[indexPath.row]
    cell.textLabel?.text = personToDisplay.firstName + " " + personToDisplay.lastName
    return cell
  }

}

