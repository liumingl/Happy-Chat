//
//  RegisterViewController.swift
//  Flash Chat
//
//  This is the View Controller which registers new users with Firebase
//

import UIKit

class RegisterViewController: UIViewController {
  
  
  //Pre-linked IBOutlets
  
  @IBOutlet weak var usernameTextfield: UITextField!
  @IBOutlet var emailTextfield: UITextField!
  @IBOutlet var passwordTextfield: UITextField!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  
  
  @IBAction func registerPressed(_ sender: AnyObject) {
    
    let username = usernameTextfield.text
    let email = emailTextfield.text
    let password = passwordTextfield.text
  }
}
