//
//  WelcomeViewController.swift
//  Flash Chat
//
//  This is the welcome view controller - the first thign the user sees
//

import UIKit


class WelcomeViewController: UIViewController, BmobEventDelegate {
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    list()
    
    save()
  }
  
  @IBAction func testButtonPresse(_ sender: Any) {
      save()
  }
  
  
  func bmobEventDidConnect(_ event: BmobEvent!) {
    print(event.description)
  }
  
  func bmobEventCanStartListen(_ event: BmobEvent!) {
    event.listenTableChange(BmobActionTypeUpdateTable, tableName: "GameScore")
  }
  
  func bmobEvent(_ event: BmobEvent!, didReceiveMessage message: String!) {
    print("didReceiveMessage \(message)")
  }
  
  func bmobEvent(_ event: BmobEvent!, error: Error!) {
    print(error.localizedDescription)
  }
  
  func bmobEventDidDisConnect(_ event: BmobEvent!, error: Error!) {
    
  }
  
  func list() {
    let event = BmobEvent.default()
    if let event = event {
      event.delegate = self
      event.start()
    }
    
  }
  
  func save(){
    let gamescore:BmobObject = BmobObject(className: "GameScore")
    gamescore.setObject("Jhon Smith", forKey: "playerName")
    gamescore.setObject(90, forKey: "score")
    gamescore.saveInBackground { (isSuccessful, error) in
      if error != nil{
        print("error is \(String(describing: error?.localizedDescription))")
      }else{
        print("success")
      }
    }
  }
}
