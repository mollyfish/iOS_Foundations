//
//  Person.swift
//  TableViewPlay
//
//  Created by Molly Kent on 6/10/15.
//  Copyright (c) 2015 Molly Kent. All rights reserved.
//
import UIKit
import Foundation

class Person {
  var firstName : String
  var lastName : String
  var image : UIImage?
  
  init (first : String, last: String) {
    self.firstName = first
    self.lastName = last
  }
}