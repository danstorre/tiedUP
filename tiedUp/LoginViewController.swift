//
//  ViewController.swift
//  tiedUp
//
//  Created by Daniel Torres on 2/14/17.
//  Copyright © 2017 Danieltorres. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class LoginViewController: UIViewController {

    
    @IBOutlet weak var stackView: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let loginButton = FBSDKLoginButton()
        stackView.addArrangedSubview(loginButton)
        loginButton.readPermissions = ["email","public_profile"]
        
        if ((FBSDKAccessToken.current()) != nil) {
            let alertController: UIAlertController = UIAlertController(title: "login", message: "you're already logged", preferredStyle: .alert)
            
            self.present(alertController, animated: true, completion: nil)
        }
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

