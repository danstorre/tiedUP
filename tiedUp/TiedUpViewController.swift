//
//  TiedUpViewController.swift
//  tiedUp
//
//  Created by Daniel Torres on 2/16/17.
//  Copyright © 2017 Danieltorres. All rights reserved.
//

import UIKit

class TiedUpViewController: UIViewController {

    
    var gameHasStarted : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
        // Do any additional setup after loading the view.
    }
    
    func gotoInstructions(){
        self.performSegue(withIdentifier: "withCode", sender: nil)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if !gameHasStarted {
            gotoInstructions()
        }
    }
    @IBAction func rightButtonNavigationItem(_ sender: Any) {
        gotoInstructions()
        
    }
    
    @IBAction func unwindToThisViewController(segue: UIStoryboardSegue) {
        gameHasStarted = true
    }
    

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        
        if segue.identifier == "withCode" {
            
            let vc = segue.destination as! InstructionsViewController
            
            vc.background = UIImage.takeScreenshot(view: self.view)!
        }
    }
    

}
