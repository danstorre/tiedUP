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
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
