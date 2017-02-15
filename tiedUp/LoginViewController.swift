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
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if ((FBSDKAccessToken.current()) != nil) {
            let storyboard =  UIStoryboard(name: "mainNavigation", bundle: nil)
            let vc = storyboard.instantiateInitialViewController() as! UITabBarController
            
            
            self.present(vc, animated: true, completion: nil)
        }

    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

