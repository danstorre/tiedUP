//
//  InstructionsViewController.swift
//  tiedUp
//
//  Created by Daniel Torres on 2/16/17.
//  Copyright © 2017 Danieltorres. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController {

    @IBOutlet var backgroundImageView: UIImageView! = UIImageView()
    var background: UIImage = UIImage()
    
    @IBOutlet weak var imReady: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.backgroundImageView.image = background
        
        imReady.backgroundColor = Color.tiedUp.lightBlue
        
        imReady.titleLabel!.textColor = .white
        imReady.layer.cornerRadius = 8
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(withDuration: 0.3, animations: {
            
            self.backgroundImageView.alpha = 1
            
        })
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
