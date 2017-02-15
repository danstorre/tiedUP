//
//  PerformanceTableViewCell.swift
//  tiedUp
//
//  Created by Daniel Torres on 2/15/17.
//  Copyright © 2017 Danieltorres. All rights reserved.
//

import UIKit

class PerformanceTableViewCell: UITableViewCell {

    
    @IBOutlet weak var valueProgressItem: UILabel!
    @IBOutlet weak var descriptionProgressItem: UILabel!
    @IBOutlet weak var imageProgressItem: UIImageView!
    @IBOutlet weak var progressView: UIProgressView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        self.progressView.frame = CGRect(x: self.progressView.frame.origin.x, y: self.progressView.frame.origin.y, width: self.progressView.frame.size.width, height: 9)
        
        var img = #imageLiteral(resourceName: "star")
        img.resizableImage(withCapInsets: UIEdgeInsets(top: 0,left: 4,bottom: 0,right: 4))
        
        self.progressView.progressImage = img;
        
        img = #imageLiteral(resourceName: "star")
        img.resizableImage(withCapInsets: UIEdgeInsets(top: 0,left: 4,bottom: 0,right: 4))
        
        
        self.progressView.trackImage = img;
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
