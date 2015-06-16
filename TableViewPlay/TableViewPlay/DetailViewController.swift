//
//  DetailViewController.swift
//  TableViewPlay
//
//  Created by Molly Kent on 6/10/15.
//  Copyright (c) 2015 Molly Kent. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate {
  
  @IBOutlet weak var firstNameTextField: UITextField!
  
  @IBOutlet weak var lastNameTextField: UITextField!
  
  var selectedPerson : Person!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      self.firstNameTextField.delegate = self
      self.lastNameTextField.delegate = self
      self.firstNameTextField.tag = 0
      self.lastNameTextField.tag = 1

      firstNameTextField.text = selectedPerson.firstName
      lastNameTextField.text = selectedPerson.lastName
        // Do any additional setup after loading the view.
    }
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    textField.resignFirstResponder()
    return false
  }
  
  func textFieldDidEndEditing(textField: UITextField) {
    if textField.tag == 0 {
      selectedPerson.firstName = textField.text
    } else {
      selectedPerson.lastName = textField.text
    }
  }




}
