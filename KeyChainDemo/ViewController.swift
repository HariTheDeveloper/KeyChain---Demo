//
//  ViewController.swift
//  KeyChainDemo
//
//  Created by iw on 04/07/21.
//

import UIKit
import SwiftKeychainWrapper


class ViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    //MARK: BUTTON ACTION
    @IBAction func loginAction(_ sender: Any) {
        KeychainWrapper.standard.set(userNameTextField?.text ?? "", forKey: "userName")
        KeychainWrapper.standard.set(userPasswordTextField?.text ?? "", forKey: "userPassword")
        self.view.endEditing(true)
        self.performSegue(withIdentifier: "toDashboard", sender: nil)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

