//
//  PersonCell.swift
//  TableViewPlay
//
//  Created by Molly Kent on 6/24/15.
//  Copyright (c) 2015 Molly Kent. All rights reserved.
//

import UIKit

class PersonCell: UITableViewCell {
  

  @IBOutlet weak var firstNameLabel: UILabel!

  @IBOutlet weak var lastNameLabel: UILabel!
  
  
  @IBOutlet weak var personImageView: UIImageView!
  
  
  override func awakeFromNib() {
    super.awakeFromNib()
  }
  
  override func setSelected(selected: Bool, animated: Bool) {
    super.setSelected(selected, animated: animated)
    
  }
  
}