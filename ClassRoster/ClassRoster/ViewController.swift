//
//  ViewController.swift
//  ClassRoster
//
//  Created by Molly Kent on 6/7/15.
//  Copyright (c) 2015 Molly Kent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var leftButton: UIButton!
  @IBOutlet weak var rightButton: UIButton!
  @IBOutlet weak var displayRoster: UILabel!
  let roster = ["John Lennon", "Ringo Starr", "Paul McCartney", "George Harrison", "Yoko Ono"]
  var i = 0
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    displayRoster.text = roster[i];
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  

  @IBAction func scrollLeft(sender: AnyObject) {
    if i > 0 {
      i = i - 1
      displayRoster.text = roster[i]
    } else {
      displayRoster.text = roster[i]
    }
  }

  @IBAction func scrollRight(sender: AnyObject) {
    if i < 4 {
      i = i + 1
      displayRoster.text = roster[i]
    } else {
      displayRoster.text = roster[i]
    }
  }
}