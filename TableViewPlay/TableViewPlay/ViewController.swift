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
    
    let John = Person(first: "John", last: "Lennon")
    let Paul = Person(first: "Paul", last: "McCartney")
    let George = Person(first: "George", last: "Harrison")
    let Ringo = Person(first: "Ringo", last: "Starr")
    
    self.people.append(John)
    self.people.append(Paul)
    self.people.append(George)
    self.people.append(Ringo)
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
  
  override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    if segue.identifier == "showDetailViewController" {
      
      let detailViewController = segue.destinationViewController as! DetailViewController
      //reference to the destination
      
      let indexPath = tableView.indexPathForSelectedRow()
      //this is what was clicked
      let selectedRow = indexPath!.row
      //this ! deals with the fact that the indexPathForSelectedRow thing is optional (b/c what if you didn't click?). The ! 'unwraps' the optional to get at the value inside.  Leaving it like this is not great; if this was nil, then the app will crash.
      let selectedPerson = people[selectedRow]
      
      detailViewController.selectedPerson = selectedPerson
      //this is the actual handoff
      
//      detailViewController.selectedPerson =
      
      
    
      
    }
  }

}

