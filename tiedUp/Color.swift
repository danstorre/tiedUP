//
//  Color.swift
//  tiedUp
//
//  Created by Daniel Torres on 2/16/17.
//  Copyright © 2017 Danieltorres. All rights reserved.
//

import UIKit

class Color: UIColor {
    
    struct tiedUp {
        static let lightBlue = Color(netHex: 0x1B9AF7)
    }
    
}

extension Color {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(netHex:Int) {
        self.init(red:(netHex >> 16) & 0xff, green:(netHex >> 8) & 0xff, blue:netHex & 0xff)
    }
}
