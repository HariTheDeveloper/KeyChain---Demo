//
//  DashboardViewController.swift
//  KeyChainDemo
//
//  Created by iw on 04/07/21.
//

import UIKit
import SwiftKeychainWrapper

class DashboardViewController: UIViewController {

    @IBOutlet weak var subscriberNameLbl: UILabel!
    @IBOutlet weak var subscriberPasswordLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let userName = KeychainWrapper.standard.string(forKey: "userName") , let userPassword = KeychainWrapper.standard.string(forKey: "userPassword") {
            subscriberNameLbl.text = userName
            subscriberPasswordLbl.text = userPassword
        }
    }
    
    @IBAction func logoutAction( _sender: AnyObject){
        KeychainWrapper.standard.removeAllKeys()
        self.dismiss(animated: true, completion: nil)
    }


}
