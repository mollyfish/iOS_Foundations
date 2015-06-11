//
//  DetailViewController.swift
//  TableViewPlay
//
//  Created by Molly Kent on 6/10/15.
//  Copyright (c) 2015 Molly Kent. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
  
  @IBOutlet weak var firstNameLabel: UILabel!
  
  @IBOutlet weak var lastNameLabel: UILabel!
  
  var selectedPerson : Person!
  
    override func viewDidLoad() {
        super.viewDidLoad()

      firstNameLabel.text = selectedPerson.firstName
      lastNameLabel.text = selectedPerson.lastName
        // Do any additional setup after loading the view.
    }




}
