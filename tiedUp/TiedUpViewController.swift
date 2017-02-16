//
//  TiedUpViewController.swift
//  tiedUp
//
//  Created by Daniel Torres on 2/16/17.
//  Copyright © 2017 Danieltorres. All rights reserved.
//

import UIKit

class TiedUpViewController: UIViewController {

    
    
    @IBOutlet weak var flowLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var acceptButton: UIButton!
    @IBOutlet weak var tiedUpNavitationItem: UINavigationItem!
    var gameHasStarted : Bool = false
    var arrayOfMissingLetters: [Letter]?
    let wholeWord : TiedUp = TiedUp(tiedUpWord: "cantina", incompleteIndexes: [2,3,4])
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let space: CGFloat = 1
        let width = (view.frame.size.width) / CGFloat(wholeWord.tiedUpWord.characters.count + 1)
        
        flowLayout.minimumInteritemSpacing = space
        flowLayout.minimumLineSpacing = space
        flowLayout.itemSize = CGSize(width: width, height: 95)
        arrayOfMissingLetters = wholeWord.arrayOfMissingLetters()
        
        acceptButton.layer.cornerRadius = 8
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

extension TiedUpViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.wholeWord.tiedUpWord.characters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        guard !wholeWord.incompleteIndexes.contains(indexPath.item) else {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "missingLetter", for: indexPath)
            return cell
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "letter", for: indexPath) as! TiedUpCollectionViewCell
        
        let index = wholeWord.tiedUpWord.index(wholeWord.tiedUpWord.startIndex, offsetBy: indexPath.item)
        
        cell.letter.text = String(wholeWord.tiedUpWord[index])
    
        return cell
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
}

extension TiedUpViewController: UICollectionViewDelegate {

     func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath:IndexPath) {
        
    }
}
