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
    
    func arrayOfLetters() -> [Letter]{
        var letters = [Letter]()
        
        for i in 0..<tiedUpWord.characters.count {
            let index = tiedUpWord.index(tiedUpWord.startIndex, offsetBy: i)
            
            guard !incompleteIndexes.contains(i) else {
                let letter = Letter(type: Letter.LetterType.incomplete, letter: String(tiedUpWord[index]))
                
                letters.append(letter)
                
                continue
            }
            
            let letter = Letter(type: Letter.LetterType.defaultLetter, letter: String(tiedUpWord[index]))
            
            
            letters.append(letter)
        }
        
        return letters
    }

}
