//
//  Letter.swift
//  tiedUp
//
//  Created by Daniel Torres on 2/16/17.
//  Copyright © 2017 Danieltorres. All rights reserved.
//

import UIKit

struct Letter {
    
    enum LetterType {
        case defaultLetter, incomplete
    }

    var type : LetterType
    var letter : String
}
