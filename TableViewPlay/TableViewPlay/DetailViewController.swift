//
//  DetailViewController.swift
//  TableViewPlay
//
//  Created by Molly Kent on 6/10/15.
//  Copyright (c) 2015 Molly Kent. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  
  @IBOutlet weak var imageView: UIImageView!
  @IBOutlet weak var firstNameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!
  
  var selectedPerson : Person!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    self.setupTextFields()
  }
  
  private func setupTextFields() {
    
    self.firstNameTextField.delegate = self
    self.lastNameTextField.delegate = self
    self.firstNameTextField.tag = 0
    self.lastNameTextField.tag = 1
    self.firstNameTextField.text = self.selectedPerson.firstName
    self.lastNameTextField.text = self.selectedPerson.lastName
    
  }
  
  func textFieldShouldReturn(textField: UITextField) -> Bool {
    
    textField.resignFirstResponder()
    return false
  }
  
  func textFieldDidEndEditing(textField: UITextField) {
    if textField.tag == 0 {
      //set the first name
      self.selectedPerson.firstName =  textField.text
    } else {
      //set the last name
      self.selectedPerson.lastName = textField.text
    }
  }
  
  @IBAction func photoButtonPressed(sender: AnyObject) {
    
    let imagePickerController = UIImagePickerController()
    imagePickerController.delegate = self
    imagePickerController.sourceType = UIImagePickerControllerSourceType.Camera
    imagePickerController.allowsEditing = true
    
    if UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera) {
      self.presentViewController(imagePickerController, animated: true, completion: nil)
    }
  }
  
  func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
    
    let image = info[UIImagePickerControllerEditedImage] as! UIImage
    self.imageView.image = image
    
    picker.dismissViewControllerAnimated(true, completion: nil)
  }
}