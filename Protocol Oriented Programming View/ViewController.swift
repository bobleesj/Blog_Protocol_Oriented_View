//
//  LoginViewController.swift
//  Protocol Oriented Programming View
//
//  Created by Bob Lee on 1/17/17.
//  Copyright © 2017 BobtheDeveloper. All rights reserved.
//


import UIKit

class BuzzableTextField: UITextField, Buzzable {}
class BuzzableButton: UIButton, Buzzable {}
class BuzzableImageView: UIImageView, Buzzable {}
class BuzzablePoppableLabel: UILabel, Buzzable, Poppable {}


class LoginViewController: UIViewController {
  

  @IBOutlet weak var passcodTextField: BuzzableTextField!
  @IBOutlet weak var loginButton: BuzzableButton!
  @IBOutlet weak var errorMessageLabel: BuzzablePoppableLabel!
  @IBOutlet weak var profileImageView: BuzzableImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setUpCornerRadius()
  }
  
  @IBAction func didTabLoginButton(_ sender: UIButton) {
    
    passcodTextField.buzz()
    loginButton.buzz()
    errorMessageLabel.buzz()
    errorMessageLabel.pop()
    profileImageView.buzz()
    
  }
  
  func setUpCornerRadius() {
    let imageHeight = profileImageView.frame.height/2
    profileImageView.layer.cornerRadius = imageHeight
    profileImageView.layer.masksToBounds = true
    
  }
  
  
}

