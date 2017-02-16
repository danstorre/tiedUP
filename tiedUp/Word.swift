//
//  Word.swift
//  tiedUp
//
//  Created by Daniel Torres on 2/16/17.
//  Copyright © 2017 Danieltorres. All rights reserved.
//

import UIKit

struct TiedUp {
    
    var tiedUpWord : String
    var incompleteIndexes: [Int]
    
    func arrayOfMissingLetters() -> [Letter]{
        var letters = [Letter]()
        
        for char in tiedUpWord.characters {
            let letter = Letter(type: Letter.LetterType.defaultLetter, letter: String(char))
            letters.append(letter)
        }
        
        return letters
    }

}
