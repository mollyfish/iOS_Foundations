//
//  DetailViewController.swift
//  TableViewPlay
//
//  Created by Molly Kent on 6/10/15.
//  Copyright (c) 2015 Molly Kent. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  
  @IBOutlet weak var firstNameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!
  @IBOutlet weak var imageView: UIImageView!
  
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
