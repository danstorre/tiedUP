//
//  GameModesViewController.swift
//  tiedUp
//
//  Created by Daniel Torres on 2/15/17.
//  Copyright © 2017 Danieltorres. All rights reserved.
//

import UIKit

class GameModesViewController: UIViewController {
    
    
    var gameModes : [GameMode] = [GameMode]()
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        
        let marathonGameMode = GameMode(image: #imageLiteral(resourceName: "marathon"), title: "Marathon" , subtitle: "Do your best until you \nrun out of lives")
        let timeTrialGameMode = GameMode(image: #imageLiteral(resourceName: "timetrial"), title: "Time trial" , subtitle: "Want to challenge time? \ngo ahead and show you're great!")
        
        gameModes.append(marathonGameMode)
        gameModes.append(timeTrialGameMode)
        tableView.tableFooterView = UIView(frame: .zero)
    }

}
// MARK:- TableViewMethods

extension GameModesViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gameModeCell") as! GameModeTableViewCell
        
        cell.gameModeImage.image = gameModes[indexPath.item].image
        cell.gameModeTitle.text = gameModes[indexPath.item].title
        cell.gameModeSubtitle.text = gameModes[indexPath.item].subtitle
        
        return cell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView(frame: .zero)
    }
}

extension GameModesViewController: UITableViewDelegate {

}
