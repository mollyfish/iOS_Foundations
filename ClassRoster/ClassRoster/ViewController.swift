//
//  ViewController.swift
//  ClassRoster
//
//  Created by Molly Kent on 6/7/15.
//  Copyright (c) 2015 Molly Kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var displayRoster: UILabel!
  let roster = ["John Lennon", "Ringo Starr", "Paul McCartney", "George Harrison", "Yoko Ono"]
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    displayRoster.text = roster[0];
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  

  @IBAction func scrollLeft(sender: AnyObject) {
    view.backgroundColor.yellowColo)
  }

  @IBAction func scrollRight(sender: AnyObject) {
  }
}

