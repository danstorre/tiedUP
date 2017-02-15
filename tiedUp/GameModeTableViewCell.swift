//
//  gameModeTableViewCell.swift
//  tiedUp
//
//  Created by Daniel Torres on 2/15/17.
//  Copyright © 2017 Danieltorres. All rights reserved.
//

import UIKit

class GameModeTableViewCell: UITableViewCell {

    @IBOutlet weak var gameModeImage: UIImageView!
    @IBOutlet weak var gameModeTitle: UILabel!
    @IBOutlet weak var gameModeSubtitle: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
