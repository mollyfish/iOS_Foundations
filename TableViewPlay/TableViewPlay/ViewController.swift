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
  var myInfo = [String: Person]()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.myArr.append("Molly")
//    self.myArr.append("Peg")
//    self.myArr.append("Dan")
    
    self.tableView.dataSource = self
    
    let John = Person(first: "John", last: "Lennon")
    let Paul = Person(first: "Paul", last: "McCartney")
    let George = Person(first: "George", last: "Harrison")
    let Ringo = Person(first: "Ringo", last: "Starr")
    
    self.people.append(John)
    self.people.append(Paul)
    self.people.append(George)
    self.people.append(Ringo)
    
    self.myInfo["bff"] = Ringo
    self.myInfo["buddy"] = Paul
    
    var QB1 = self.myInfo["bff1"]
    QB1?.firstName
    
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
    
    // no optional binding
//    if personToDisplay.image != nil {
//      cell.imageView?.image = personToDisplay.image!
//    }
    //optional binding
    if let image = personToDisplay.image {
      cell.imageView?.image = image
    }
    
    cell.textLabel?.text = personToDisplay.firstName + " " + personToDisplay.lastName
    return cell
  }
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "showDetailViewController" {
      
      if let detailViewController = segue.destinationViewController as? DetailViewController {
      //reference to the destination

      let myIndexPath = self.tableView.indexPathForSelectedRow()
        
        if let indexPath = tableView.indexPathForSelectedRow() {
      //this is what was clicked
      let selectedRow = indexPath.row
      let selectedPerson = people[selectedRow]
          
      
      detailViewController.selectedPerson = selectedPerson
        }
      }
    }
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    self.tableView.reloadData()
  }

}

